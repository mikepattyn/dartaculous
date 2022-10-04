package main

// #include <stdlib.h>
import (
	"C"
	"mongo_go/helpers"
	"mongo_go/marshalling"
	"mongo_go/mongo_stubs"
	"unsafe"

	"gitlab.com/squarealfa/dart_bridge/ffi"
	"gitlab.com/squarealfa/dart_bridge/stubs"
	"go.mongodb.org/mongo-driver/mongo/options"

	"errors"

	"golang.org/x/net/context"
)
import "sync"

func main() {}

var isInitialized bool = false
var isInitializedLock sync.RWMutex

//export initialize
func initialize(api unsafe.Pointer) {
	isInitializedLock.Lock()
	defer isInitializedLock.Unlock()

	if isInitialized {
		return
	}
	isInitialized = true

	ffi.Init(api)
}

//export connectMongo
func connectMongo(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.ConnectionRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()
		opts := options.Client().ApplyURI(request.ConnectionString)
		if request.Direct != nil {
			opts.SetDirect(request.Direct.Value)
		}
		oid, err := cs.Connect(ctx, opts)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		helpers.SendObjectId(port, oid)
	}()
}

//export disconnect
func disconnect(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.DisconnectRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	oid := helpers.BytesToOid(request.ConnectionOid)

	go func() {
		ctx := context.Background()
		err := cs.Disconnect(ctx, oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export startSession
func startSession(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.StartSessionRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()
		connectionOid := helpers.BytesToOid(request.ConnectionOid)
		sessionOid, err := cs.StartSession(ctx, connectionOid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		helpers.SendObjectId(port, sessionOid)
	}()
}

//export closeSession
func closeSession(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.CloseSessionRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()
		connectionOid := helpers.BytesToOid(request.ConnectionOid)
		sessionOid := helpers.BytesToOid(request.SessionOid)
		err := cs.CloseSession(ctx, connectionOid, sessionOid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		helpers.SendObjectId(port, sessionOid)
	}()
}

//export withTransaction
func withTransaction(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.WithTransactionRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		connectionOid := helpers.BytesToOid(request.ConnectionOid)
		sessionOid := helpers.BytesToOid(request.SessionOid)
		connectionProxy, err := cs.GetConnectionProxy(connectionOid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxOid, err := connectionProxy.WithTransaction(sessionOid)

		if err != nil {
			helpers.SendErrorMessage(port, err)
		}

		helpers.SendObjectId(port, trxOid)
	}()
}

//export endTransaction
func endTransaction(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.EndTransactionRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		connectionOid := helpers.BytesToOid(request.ConnectionOid)
		sessionOid := helpers.BytesToOid(request.SessionOid)
		transactionOid := helpers.BytesToOid(request.TransactionOid)
		connectionProxy, err := cs.GetConnectionProxy(connectionOid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		sessionProxy, err := connectionProxy.GetSessionProxy(sessionOid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		var resultError error
		if request.ErrorMessage != "" {
			resultError = errors.New(request.ErrorMessage)
		}
		err = sessionProxy.EndTransaction(transactionOid, TransactionResult{
			result: nil,
			err:    resultError,
		})
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export database
func database(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.DatabaseRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()
		connectionOid := helpers.BytesToOid(request.ConnectionOid)
		oid, err := cs.CreateDatabaseProxy(ctx, connectionOid, request.DatabaseName)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		helpers.SendObjectId(port, oid)
	}()
}

//export dropDatabase
func dropDatabase(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.DropDatabaseRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		dbOid := helpers.BytesToOid(request.DatabaseOid)
		dbProxy, err := cs.GetDatabaseProxy(dbOid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		ctx := context.Background()
		err = dbProxy.Drop(ctx)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		} else {
			ffi.SendEmptyMessage(port)
		}
	}()
}

//export collection
func collection(port int64, buffer *C.uchar, size int) {
	request := &mongo_stubs.CollectionRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()
		dbOid := helpers.BytesToOid(request.DatabaseOid)
		oid, err := cs.CreateCollectionProxy(ctx, dbOid, request.CollectionName)
		if err != nil {
			helpers.SendErrorMessage(port, err)
		}
		helpers.SendObjectId(port, oid)
	}()
}

//export listDatabaseNames
func listDatabaseNames(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.ListDatabasesRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)
	oid := helpers.BytesToOid(request.ConnectionOid)

	go func() {
		ctx := context.Background()

		con, err := cs.GetConnectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		names, err := con.ListDatabaseNames(ctx, request.Request)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		ret := &mongo_stubs.ListDatabaseNamesResponse{Names: names}
		ffi.SendMessage(port, ret)
	}()
}

//export insertOne
func insertOne(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.InsertOneRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		r, err := coll.InsertOne(ctx, trxProxy, request.Document)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToInsertOneResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)
	}()
}

//export insertMany
func insertMany(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.InsertManyRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		r, err := coll.InsertMany(ctx, trxProxy, request.Documents)

		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToInsertManyResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)
	}()
}

//export updateOne
func updateOne(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.UpdateRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		opts := getUpdateOptions(&request)
		r, err := coll.UpdateOne(ctx, trxProxy, request.Filter, request.Update, opts)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToUpdateResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)

	}()
}

//export updateMany
func updateMany(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.UpdateRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)
		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		opts := getUpdateOptions(&request)
		r, err := coll.UpdateMany(ctx, trxProxy, request.Filter, request.Update, opts)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToUpdateResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)

	}()
}

//export replaceOne
func replaceOne(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.ReplaceRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		opts := getReplaceOptions(&request)
		r, err := coll.ReplaceOne(ctx, trxProxy, request.Filter, request.Replacement, opts)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToUpdateResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)
	}()
}

func getUpdateOptions(request *mongo_stubs.UpdateRequest) *options.UpdateOptions {
	if !request.IsUpsert {
		return nil
	}
	var t bool = true
	opts := &options.UpdateOptions{
		Upsert: &t,
	}
	return opts
}

func getReplaceOptions(request *mongo_stubs.ReplaceRequest) *options.ReplaceOptions {
	if !request.IsUpsert {
		return nil
	}
	var t bool = true
	opts := &options.ReplaceOptions{
		Upsert: &t,
	}
	return opts
}

//export deleteOne
func deleteOne(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.DeleteRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		r, err := coll.DeleteOne(ctx, trxProxy, request.Filter)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToDeleteResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)
	}()
}

//export deleteMany
func deleteMany(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.DeleteRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		r, err := coll.DeleteMany(ctx, trxProxy, request.Filter)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToDeleteResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)

	}()
}

//export findOne
func findOne(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.FindOneRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		bytes, err := coll.FindOne(ctx, trxProxy, request.Filter)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendByteArrayMessage(port, bytes)
	}()
}

//export find
func find(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.FindRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		cursor, err := coll.Find(ctx, trxProxy, request.Filter)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		for cursor.Next(context.TODO()) {
			ffi.SendByteArrayMessage(port, cursor.Current)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export aggregate
func aggregate(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.AggregateRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		cursor, err := coll.Aggregate(ctx, trxProxy, request.Pipeline)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		for cursor.Next(context.TODO()) {
			ffi.SendByteArrayMessage(port, cursor.Current)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export watch
func watch(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.AggregateRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		cursor, err := coll.Watch(ctx, trxProxy, request.Pipeline)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		for cursor.Next(context.TODO()) {
			ffi.SendByteArrayMessage(port, cursor.Current)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export createOneIndex
func createOneIndex(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.CreateIndexRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		model := marshalling.CreateIndexModel(&request)
		name, err := coll.CreateOneIndex(ctx, model)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, &stubs.StringMessage{Value: name})
	}()
}

//export listIndexes
func listIndexes(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.ListIndexesRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	oid := helpers.BytesToOid(request.CollectionOid)

	go func() {
		ctx := context.Background()

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		cursor, err := coll.ListIndexes(ctx)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		for cursor.Next(context.TODO()) {
			ffi.SendByteArrayMessage(port, cursor.Current)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export dropOneIndex
func dropOneIndex(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.DropIndexRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		bytes, err := coll.DropOneIndex(ctx, request.Name)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendByteArrayMessage(port, bytes)
	}()
}

//export dropAllIndexes
func dropAllIndexes(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.DropAllIndexesRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		bytes, err := coll.DropAllIndexes(ctx)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendByteArrayMessage(port, bytes)
	}()
}

//export bulkWrite
func bulkWrite(port int64, buffer *C.uchar, size int) {
	var request mongo_stubs.BulkWriteRequest
	ffi.Unmarshal(unsafe.Pointer(buffer), size, &request)

	go func() {
		ctx := context.Background()
		oid := helpers.BytesToOid(request.CollectionOid)

		coll, err := cs.GetCollectionProxy(oid)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		trxProxy, err := _getTransactionProxy(coll.databaseProxy.connectionProxy, request.Context)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		writeModels, err := marshalling.GetWriteModels(&request)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}
		opts := marshalling.GetBulkWriteOptions(&request)

		// Action
		r, err := coll.BulkWrite(ctx, trxProxy, writeModels, opts)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		m, err := marshalling.ToBulkWriteResult(r)
		if err != nil {
			helpers.SendErrorMessage(port, err)
			return
		}

		ffi.SendMessage(port, m)

	}()
}

func _getTransactionProxy(connectionProxy *ConnectionProxy, requestContext *mongo_stubs.RequestContext) (*TransactionProxy, error) {
	switch requestContext.Types.(type) {
	case *mongo_stubs.RequestContext_Empty:
		return nil, nil
	case *mongo_stubs.RequestContext_WithTransaction:
		trxId := requestContext.GetWithTransaction()
		sessionId := helpers.BytesToOid(trxId.SessionOid)
		transactionId := helpers.BytesToOid(trxId.TransactionId)
		proxy, err := connectionProxy.GetTransactionProxy(sessionId, transactionId)
		return proxy, err

	default:
		return nil, errors.New("request context type still not supported")
	}

}
