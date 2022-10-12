// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// MongoProxy GO driver
class LibMongoProxy {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  LibMongoProxy(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  LibMongoProxy.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void initialize(
    ffi.Pointer<ffi.Void> api,
  ) {
    return _initialize(
      api,
    );
  }

  late final _initializePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'initialize');
  late final _initialize =
      _initializePtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void connectMongo(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _connectMongo(
      port,
      buffer,
      size,
    );
  }

  late final _connectMongoPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('connectMongo');
  late final _connectMongo = _connectMongoPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void disconnect(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _disconnect(
      port,
      buffer,
      size,
    );
  }

  late final _disconnectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('disconnect');
  late final _disconnect = _disconnectPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void startSession(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _startSession(
      port,
      buffer,
      size,
    );
  }

  late final _startSessionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('startSession');
  late final _startSession = _startSessionPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void closeSession(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _closeSession(
      port,
      buffer,
      size,
    );
  }

  late final _closeSessionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('closeSession');
  late final _closeSession = _closeSessionPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void withTransaction(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _withTransaction(
      port,
      buffer,
      size,
    );
  }

  late final _withTransactionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('withTransaction');
  late final _withTransaction = _withTransactionPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void endTransaction(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _endTransaction(
      port,
      buffer,
      size,
    );
  }

  late final _endTransactionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('endTransaction');
  late final _endTransaction = _endTransactionPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void database(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _database(
      port,
      buffer,
      size,
    );
  }

  late final _databasePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('database');
  late final _database = _databasePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void dropDatabase(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _dropDatabase(
      port,
      buffer,
      size,
    );
  }

  late final _dropDatabasePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('dropDatabase');
  late final _dropDatabase = _dropDatabasePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void collection(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _collection(
      port,
      buffer,
      size,
    );
  }

  late final _collectionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('collection');
  late final _collection = _collectionPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void listDatabaseNames(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _listDatabaseNames(
      port,
      buffer,
      size,
    );
  }

  late final _listDatabaseNamesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('listDatabaseNames');
  late final _listDatabaseNames = _listDatabaseNamesPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void insertOne(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _insertOne(
      port,
      buffer,
      size,
    );
  }

  late final _insertOnePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('insertOne');
  late final _insertOne = _insertOnePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void insertMany(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _insertMany(
      port,
      buffer,
      size,
    );
  }

  late final _insertManyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('insertMany');
  late final _insertMany = _insertManyPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void updateOne(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _updateOne(
      port,
      buffer,
      size,
    );
  }

  late final _updateOnePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('updateOne');
  late final _updateOne = _updateOnePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void updateMany(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _updateMany(
      port,
      buffer,
      size,
    );
  }

  late final _updateManyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('updateMany');
  late final _updateMany = _updateManyPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void replaceOne(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _replaceOne(
      port,
      buffer,
      size,
    );
  }

  late final _replaceOnePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('replaceOne');
  late final _replaceOne = _replaceOnePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void deleteOne(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _deleteOne(
      port,
      buffer,
      size,
    );
  }

  late final _deleteOnePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('deleteOne');
  late final _deleteOne = _deleteOnePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void deleteMany(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _deleteMany(
      port,
      buffer,
      size,
    );
  }

  late final _deleteManyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('deleteMany');
  late final _deleteMany = _deleteManyPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void findOne(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _findOne(
      port,
      buffer,
      size,
    );
  }

  late final _findOnePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('findOne');
  late final _findOne = _findOnePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void find(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _find(
      port,
      buffer,
      size,
    );
  }

  late final _findPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('find');
  late final _find = _findPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void countDocuments(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _countDocuments(
      port,
      buffer,
      size,
    );
  }

  late final _countDocumentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('countDocuments');
  late final _countDocuments = _countDocumentsPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void estimatedDocumentCount(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _estimatedDocumentCount(
      port,
      buffer,
      size,
    );
  }

  late final _estimatedDocumentCountPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('estimatedDocumentCount');
  late final _estimatedDocumentCount = _estimatedDocumentCountPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void aggregate(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _aggregate(
      port,
      buffer,
      size,
    );
  }

  late final _aggregatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('aggregate');
  late final _aggregate = _aggregatePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void watch(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _watch(
      port,
      buffer,
      size,
    );
  }

  late final _watchPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('watch');
  late final _watch = _watchPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void createOneIndex(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _createOneIndex(
      port,
      buffer,
      size,
    );
  }

  late final _createOneIndexPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('createOneIndex');
  late final _createOneIndex = _createOneIndexPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void listIndexes(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _listIndexes(
      port,
      buffer,
      size,
    );
  }

  late final _listIndexesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('listIndexes');
  late final _listIndexes = _listIndexesPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void dropOneIndex(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _dropOneIndex(
      port,
      buffer,
      size,
    );
  }

  late final _dropOneIndexPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('dropOneIndex');
  late final _dropOneIndex = _dropOneIndexPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void dropAllIndexes(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _dropAllIndexes(
      port,
      buffer,
      size,
    );
  }

  late final _dropAllIndexesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(GoInt64, ffi.Pointer<ffi.UnsignedChar>,
              GoInt)>>('dropAllIndexes');
  late final _dropAllIndexes = _dropAllIndexesPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();

  void bulkWrite(
    int port,
    ffi.Pointer<ffi.UnsignedChar> buffer,
    int size,
  ) {
    return _bulkWrite(
      port,
      buffer,
      size,
    );
  }

  late final _bulkWritePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              GoInt64, ffi.Pointer<ffi.UnsignedChar>, GoInt)>>('bulkWrite');
  late final _bulkWrite = _bulkWritePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.UnsignedChar>, int)>();
}

class max_align_t extends ffi.Opaque {}

class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef ptrdiff_t = ffi.Long;

class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}

typedef GoInt = GoInt64;
typedef GoInt64 = ffi.LongLong;

const int NULL = 0;
