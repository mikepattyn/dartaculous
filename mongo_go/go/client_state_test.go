package main

import (
	"errors"
	"mongo_go/mongo_stubs"
	"os"
	"sync"
	"testing"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"golang.org/x/net/context"
)

var connectionOid primitive.ObjectID
var dbOid primitive.ObjectID
var collOid primitive.ObjectID
var mongoClient *mongo.Client
var mongoDatabase *mongo.Database
var mongoCollection *mongo.Collection

const connectionString string = "mongodb://localhost:27017/"
const testDatabaseName string = "go_mongo_test_db"
const testCollectionName string = "test_collection"

func TestMain(m *testing.M) {
	err := testConnect()
	if err != nil {
		os.Exit(1)
	}
	testDrop()
	exitVal := m.Run()

	err = assertStateCleaned()
	if err != nil {
		os.Exit(1)
	}

	os.Exit(exitVal)
}

func testConnect() error {
	err := prepareNativeObjects()
	if err != nil {
		return err
	}

	request := &mongo_stubs.ConnectionRequest{}
	request.ConnectionString = connectionString

	ctx := context.Background()
	oid, err := cs.Connect(ctx, options.Client().ApplyURI(request.ConnectionString))
	if err != nil {
		return err
	}
	connectionOid = oid

	oid, err = cs.CreateDatabaseProxy(ctx, connectionOid, testDatabaseName)
	if err != nil {
		return err
	}

	dbOid = oid

	oid, err = cs.CreateCollectionProxy(ctx, dbOid, testCollectionName)
	if err != nil {
		return err
	}

	collOid = oid

	return nil
}

func testDrop() error {
	ctx := context.Background()
	db, err := cs.GetDatabaseProxy(dbOid)
	if err != nil {
		return err
	}

	err = db.Drop(ctx)
	return err
}

func prepareNativeObjects() error {
	var err error
	mongoClient, err = mongo.Connect(context.Background(), options.Client().ApplyURI(connectionString))
	if err != nil {
		return err
	}
	mongoDatabase = mongoClient.Database(testDatabaseName)
	mongoCollection = mongoDatabase.Collection(testCollectionName)
	return nil
}

func Test_ListDatabaseNames(t *testing.T) {
	ctx := context.Background()

	cli, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		t.Error(err)
	}

	names, err := cli.ListDatabaseNames(ctx, &mongo_stubs.ListDatabasesRequest_Request{})
	if err != nil {
		t.Error(err)
	}

	if len(names) == 0 {
		t.Error("should have at least one database")
	}

}

func Test_InsertOne(t *testing.T) {
	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}

	ctx := context.Background()

	doc := bson.D{{Key: "name", Value: "Alice"}, {Key: "score", Value: "15"}}

	bytes, err := bson.Marshal(doc)
	if err != nil {
		t.Error("Could not marshal document to insert")
	}

	_, err = coll.InsertOne(ctx, nil, bytes)
	if err != nil {
		t.Error(err)
	}
	c, err := mongoCollection.CountDocuments(ctx, bson.D{})
	if err != nil {
		t.Error(err)
	}
	if c == 0 {
		t.Error("Should have at least the inserted document")
	}
}

func Test_InsertTwoTrxError(t *testing.T) {
	ctx := context.Background()

	startCount, err := mongoCollection.CountDocuments(ctx, bson.D{})
	if err != nil {
		t.Error(err)
	}

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}

	sessionOid, err := cs.StartSession(ctx, connectionOid)
	if err != nil {
		t.Error("Could not start session", err)
	}

	trxOid, err := cs.WithTransaction(ctx, connectionOid, sessionOid)
	if err != nil {
		t.Error("Could not start transaction", err)
	}
	transactionProxy, err := cs.GetTransactionProxy(context.Background(), connectionOid, sessionOid, trxOid)
	if err != nil {
		t.Error("Could not get transaction proxy ", err)
	}

	doc := bson.D{{Key: "name", Value: "David"}, {Key: "score", Value: "16"}}

	bytes, err := bson.Marshal(doc)
	if err != nil {
		t.Error("Could not marshal document to insert")
	}
	doc2 := bson.D{{Key: "name", Value: "Edward"}, {Key: "score", Value: "17"}}

	bytes2, err := bson.Marshal(doc2)
	if err != nil {
		t.Error("Could not marshal document to insert")
	}

	_, err = coll.InsertOne(ctx, transactionProxy, bytes)
	if err != nil {
		t.Error(err)
	}
	_, err = coll.InsertOne(ctx, transactionProxy, bytes2)
	if err != nil {
		t.Error(err)
	}

	tr := TransactionResult{err: errors.New("oops")}
	cs.EndTransaction(ctx, connectionOid, sessionOid, trxOid, tr)
	cs.CloseSession(ctx, connectionOid, sessionOid)
	endCount, err := mongoCollection.CountDocuments(ctx, bson.D{})
	if err != nil {
		t.Error(err)
	}

	if startCount != endCount {
		t.Error("Transaction error should have restored the document count")
	}
}

func assertStateCleaned() error {
	cproxy, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		return err
	}
	if len(cproxy.sessionProxies) != 0 {
		return errors.New("There is a pending session")
	}

	return nil
}

func Test_FindOne(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}

	mongoCollection.InsertOne(ctx, bson.D{{Key: "_id", Value: "200"}, {Key: "name", Value: "Frederick"}})
	filter, err := bson.Marshal(bson.D{{Key: "_id", Value: "200"}})
	if err != nil {
		t.Error(err)
	}

	item, err := coll.FindOne(ctx, nil, filter)
	if err != nil {
		t.Errorf(err.Error())
		return
	}
	var bsonItem bson.M = bson.M{}
	err = bson.Unmarshal(item, bsonItem)
	if err != nil {
		t.Error(err)
	}
	name := bsonItem["name"]
	if name != "Frederick" {
		t.Error("Found the wrong item")
	}

}

func Test_Find(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}

	mongoCollection.InsertOne(ctx, bson.D{{Key: "name", Value: "Geraldine"}})
	mongoCollection.InsertOne(ctx, bson.D{{Key: "name", Value: "Gerald"}})
	filter, err := bson.Marshal(bson.D{})
	if err != nil {
		t.Error(err)
	}

	cursor, err := coll.Find(ctx, nil, filter)
	if err != nil {
		t.Errorf(err.Error())
		return
	}
	i := 0
	for cursor.Next(context.TODO()) {
		i++
	}
	if i < 2 {
		t.Error("Found less than 2 items")
	}

}

func Test_InsertOneTrx(t *testing.T) {
	ctx := context.Background()

	startCount, err := mongoCollection.CountDocuments(ctx, bson.D{})
	if err != nil {
		t.Error(err)
	}

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}

	sessionOid, err := cs.StartSession(ctx, connectionOid)
	if err != nil {
		t.Error("Could not start session", err)
	}

	trxOid, err := cs.WithTransaction(ctx, connectionOid, sessionOid)
	if err != nil {
		t.Error("Could not start transaction", err)
	}
	transactionProxy, err := cs.GetTransactionProxy(context.Background(), connectionOid, sessionOid, trxOid)
	if err != nil {
		t.Error("Could not get transaction proxy ", err)
	}

	doc := bson.D{{Key: "name", Value: "Bob"}, {Key: "score", Value: "16"}}

	bytes, err := bson.Marshal(doc)
	if err != nil {
		t.Error("Could not marshal document to insert")
	}
	doc2 := bson.D{{Key: "name", Value: "Charles"}, {Key: "score", Value: "17"}}

	bytes2, err := bson.Marshal(doc2)
	if err != nil {
		t.Error("Could not marshal document to insert")
	}

	_, err = coll.InsertOne(ctx, transactionProxy, bytes)
	if err != nil {
		t.Error(err)
	}
	_, err = coll.InsertOne(ctx, transactionProxy, bytes2)
	if err != nil {
		t.Error(err)
	}

	cs.EndTransaction(ctx, connectionOid, sessionOid, trxOid, TransactionResult{})
	cs.CloseSession(ctx, connectionOid, sessionOid)

	endCount, err := mongoCollection.CountDocuments(ctx, bson.D{})
	if err != nil {
		t.Error(err)
	}

	if endCount != startCount+2 {
		t.Error("Should have increased 2 the number of items")
	}

}

func Test_InsertDeleteMany(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}

	bytes := deleteAll(ctx, t, coll)

	cnt, err := coll.col.CountDocuments(ctx, bytes)
	if err != nil {
		t.Error(err)
	}
	if cnt != 0 {
		t.Error("document count after deleteMany with empy filter is not zero")
	}

}

func deleteAll(ctx context.Context, t *testing.T, coll *CollectionProxy) []byte {
	doc := bson.D{}
	bytes, err := bson.Marshal(doc)
	if err != nil {
		t.Error(err)
	}

	_, err = coll.DeleteMany(ctx, nil, bytes)
	if err != nil {
		t.Error(err)
	}
	return bytes
}

func Test_InsertDeleteOne(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}
	deleteAll(ctx, t, coll)

	bytes, _ := bson.Marshal(bson.D{{Key: "name", Value: "Alice"}})
	coll.InsertOne(ctx, nil, bytes)
	bytes, _ = bson.Marshal(bson.D{{Key: "name", Value: "Bob"}})
	coll.InsertOne(ctx, nil, bytes)

	bytes, _ = bson.Marshal(bson.D{})
	coll.DeleteOne(ctx, nil, bytes)

	cnt, err := coll.col.CountDocuments(ctx, bytes)
	if err != nil {
		t.Error(err)
	}
	if cnt != 1 {
		t.Error("document count after deleteOne is different from expected")
	}

}

func Test_UpdateMany(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}
	deleteAll(ctx, t, coll)

	bytes, _ := bson.Marshal(bson.D{{Key: "name", Value: "Alice"}})
	coll.InsertOne(ctx, nil, bytes)
	bytes, _ = bson.Marshal(bson.D{{Key: "name", Value: "Bob"}})
	coll.InsertOne(ctx, nil, bytes)

	filter, _ := bson.Marshal(bson.D{})
	update, _ := bson.Marshal(bson.D{{Key: "$set", Value: bson.D{{Key: "extra", Value: 1}}}})
	coll.UpdateMany(ctx, nil, filter, update)

	filter, _ = bson.Marshal(bson.D{{Key: "extra", Value: 1}})
	cnt, err := coll.col.CountDocuments(ctx, filter)
	if err != nil {
		t.Error(err)
	}
	if cnt != 2 {
		t.Error("document count after updateMany is different from expected")
	}

}

func Test_UpdateOne(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}
	deleteAll(ctx, t, coll)

	bytes, _ := bson.Marshal(bson.D{{Key: "name", Value: "Alice"}})
	coll.InsertOne(ctx, nil, bytes)
	bytes, _ = bson.Marshal(bson.D{{Key: "name", Value: "Bob"}})
	coll.InsertOne(ctx, nil, bytes)

	filter, _ := bson.Marshal(bson.D{})
	update, _ := bson.Marshal(bson.D{{Key: "$set", Value: bson.D{{Key: "extra", Value: 1}}}})
	coll.UpdateOne(ctx, nil, filter, update)

	filter, _ = bson.Marshal(bson.D{{Key: "extra", Value: 1}})
	cnt, err := coll.col.CountDocuments(ctx, filter)
	if err != nil {
		t.Error(err)
	}
	if cnt != 1 {
		t.Error("document count after updateMany is different from expected")
	}

}

func Test_ReplaceOne(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}
	deleteAll(ctx, t, coll)

	bytes, _ := bson.Marshal(bson.D{{Key: "_id", Value: "1"}, {Key: "name", Value: "Alice"}})
	coll.InsertOne(ctx, nil, bytes)
	bytes, _ = bson.Marshal(bson.D{{Key: "_id", Value: "2"}, {Key: "name", Value: "Bob"}})
	coll.InsertOne(ctx, nil, bytes)

	filter, _ := bson.Marshal(bson.D{{Key: "_id", Value: "2"}})
	replacement, _ := bson.Marshal(bson.D{{Key: "name", Value: "Charles"}})
	coll.ReplaceOne(ctx, nil, filter, replacement)

	filter, _ = bson.Marshal(bson.D{})
	cursor, err := coll.col.Find(ctx, filter)
	if err != nil {
		t.Error(err)
	}
	for cursor.Next(context.TODO()) {
		var b bson.M
		cursor.Decode(b)
		id := b["_id"]
		name := b["name"]
		if (id == "1" && name != "Alice") || (id == "2" && name != "Charles") {
			t.Error("Replace did not work")
		}

	}

}

func Test_Aggregation(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}
	deleteAll(ctx, t, coll)

	bytes, _ := bson.Marshal(bson.D{{Key: "_id", Value: "1"}, {Key: "name", Value: "Alice"}})
	coll.InsertOne(ctx, nil, bytes)
	bytes, _ = bson.Marshal(bson.D{{Key: "_id", Value: "2"}, {Key: "name", Value: "Bob"}})
	coll.InsertOne(ctx, nil, bytes)

	match, err := bson.Marshal(bson.D{{Key: "$match", Value: bson.D{{Key: "_id", Value: "2"}}}})
	if err != nil {
		t.Error(err)
		return
	}
	filter := [][]byte{match}
	cursor, err := coll.Aggregate(ctx, nil, filter)
	if err != nil {
		msg := err.Error()
		t.Error(msg)
		return
	}

	i := 0
	for cursor.Next(context.TODO()) {
		i++
		b := bson.M{}
		r := cursor.Current
		err := bson.Unmarshal(r, b)
		if err != nil {
			t.Error(err)
			return
		}
		id := b["_id"]
		name := b["name"]
		if id != "2" || name != "Bob" {
			t.Error("Aggregate found wrong item")
		}
	}
	if i != 1 {
		t.Error("Aggregate found wrong number of documents")
	}
}

func Test_Watch(t *testing.T) {
	ctx := context.Background()

	coll, err := cs.GetCollectionProxy(collOid)
	if err != nil {
		t.Fatal(err)
	}
	deleteAll(ctx, t, coll)

	match, err := bson.Marshal(bson.D{{Key: "$match", Value: bson.D{{Key: "fullDocument.include", Value: true}}}})
	if err != nil {
		t.Error(err)
		return
	}
	filter := [][]byte{match}
	changeStream, err := coll.col.Watch(ctx, filter)
	if err != nil {
		msg := err.Error()
		t.Error(msg)
		return
	}
	defer changeStream.Close(context.TODO())

	foundNames := make([]string, 2)
	var waitGroup sync.WaitGroup
	waitGroup.Add(2)

	go func() {
		defer waitGroup.Done()
		i := 0
		for changeStream.Next(context.TODO()) {

			b := bson.M{}
			r := changeStream.Current
			err := bson.Unmarshal(r, b)
			if err != nil {
				t.Error(err)
				return
			}
			name := b["fullDocument"].(primitive.M)["name"].(string)
			foundNames[i] = name
			i++
			if i == 2 {
				return
			}
		}
	}()

	go func() {
		defer waitGroup.Done()
		bytes, _ := bson.Marshal(bson.D{{Key: "name", Value: "Alice"}, {Key: "include", Value: true}})
		coll.InsertOne(ctx, nil, bytes)
		bytes, _ = bson.Marshal(bson.D{{Key: "name", Value: "Bob"}})
		coll.InsertOne(ctx, nil, bytes)
		bytes, _ = bson.Marshal(bson.D{{Key: "name", Value: "Charles"}, {Key: "include", Value: true}})
		coll.InsertOne(ctx, nil, bytes)

	}()
	waitGroup.Wait()
	changeStream.Close(ctx)
	if len(foundNames) != 2 {
		t.Error("did not receive all applicable records")
		return
	}
	if foundNames[0] != "Alice" {
		t.Error("did not find Alice")
	}
	if foundNames[1] != "Charles" {
		t.Error("did not find Charles")
	}

}
