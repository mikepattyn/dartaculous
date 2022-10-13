/* Code generated by cmd/cgo; DO NOT EDIT. */

/* package mongo_go */


#line 1 "cgo-builtin-export-prolog"

#include <stddef.h>

#ifndef GO_CGO_EXPORT_PROLOGUE_H
#define GO_CGO_EXPORT_PROLOGUE_H

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef struct { const char *p; ptrdiff_t n; } _GoString_;
#endif

#endif

/* Start of preamble from import "C" comments.  */




/* End of preamble from import "C" comments.  */


/* Start of boilerplate cgo prologue.  */
#line 1 "cgo-gcc-export-header-prolog"

#ifndef GO_CGO_PROLOGUE_H
#define GO_CGO_PROLOGUE_H

typedef signed char GoInt8;
typedef unsigned char GoUint8;
typedef short GoInt16;
typedef unsigned short GoUint16;
typedef int GoInt32;
typedef unsigned int GoUint32;
typedef long long GoInt64;
typedef unsigned long long GoUint64;
typedef GoInt64 GoInt;
typedef GoUint64 GoUint;
typedef size_t GoUintptr;
typedef float GoFloat32;
typedef double GoFloat64;
#ifdef _MSC_VER
#include <complex.h>
typedef _Fcomplex GoComplex64;
typedef _Dcomplex GoComplex128;
#else
typedef float _Complex GoComplex64;
typedef double _Complex GoComplex128;
#endif

/*
  static assertion to make sure the file is being used on architecture
  at least with matching size of GoInt.
*/
typedef char _check_for_64_bit_pointer_matching_GoInt[sizeof(void*)==64/8 ? 1:-1];

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef _GoString_ GoString;
#endif
typedef void *GoMap;
typedef void *GoChan;
typedef struct { void *t; void *v; } GoInterface;
typedef struct { void *data; GoInt len; GoInt cap; } GoSlice;

#endif

/* End of boilerplate cgo prologue.  */

#ifdef __cplusplus
extern "C" {
#endif

extern void initialize(void* api);
extern void connectMongo(GoInt64 port, unsigned char* buffer, GoInt size);
extern void disconnect(GoInt64 port, unsigned char* buffer, GoInt size);
extern void startSession(GoInt64 port, unsigned char* buffer, GoInt size);
extern void closeSession(GoInt64 port, unsigned char* buffer, GoInt size);
extern void withTransaction(GoInt64 port, unsigned char* buffer, GoInt size);
extern void endTransaction(GoInt64 port, unsigned char* buffer, GoInt size);
extern void database(GoInt64 port, unsigned char* buffer, GoInt size);
extern void dropDatabase(GoInt64 port, unsigned char* buffer, GoInt size);
extern void collection(GoInt64 port, unsigned char* buffer, GoInt size);
extern void listDatabaseNames(GoInt64 port, unsigned char* buffer, GoInt size);
extern void insertOne(GoInt64 port, unsigned char* buffer, GoInt size);
extern void insertMany(GoInt64 port, unsigned char* buffer, GoInt size);
extern void updateOne(GoInt64 port, unsigned char* buffer, GoInt size);
extern void updateMany(GoInt64 port, unsigned char* buffer, GoInt size);
extern void replaceOne(GoInt64 port, unsigned char* buffer, GoInt size);
extern void deleteOne(GoInt64 port, unsigned char* buffer, GoInt size);
extern void deleteMany(GoInt64 port, unsigned char* buffer, GoInt size);
extern void findOne(GoInt64 port, unsigned char* buffer, GoInt size);
extern void findOneAndDelete(GoInt64 port, unsigned char* buffer, GoInt size);
extern void findOneAndUpdate(GoInt64 port, unsigned char* buffer, GoInt size);
extern void findOneAndReplace(GoInt64 port, unsigned char* buffer, GoInt size);
extern void find(GoInt64 port, unsigned char* buffer, GoInt size);
extern void countDocuments(GoInt64 port, unsigned char* buffer, GoInt size);
extern void estimatedDocumentCount(GoInt64 port, unsigned char* buffer, GoInt size);
extern void aggregate(GoInt64 port, unsigned char* buffer, GoInt size);
extern void watch(GoInt64 port, unsigned char* buffer, GoInt size);
extern void createOneIndex(GoInt64 port, unsigned char* buffer, GoInt size);
extern void listIndexes(GoInt64 port, unsigned char* buffer, GoInt size);
extern void dropOneIndex(GoInt64 port, unsigned char* buffer, GoInt size);
extern void dropAllIndexes(GoInt64 port, unsigned char* buffer, GoInt size);
extern void bulkWrite(GoInt64 port, unsigned char* buffer, GoInt size);

#ifdef __cplusplus
}
#endif
