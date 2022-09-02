/* Code generated by cmd/cgo; DO NOT EDIT. */

/* package command-line-arguments */


#line 1 "cgo-builtin-export-prolog"

#include <stddef.h> /* for ptrdiff_t below */

#ifndef GO_CGO_EXPORT_PROLOGUE_H
#define GO_CGO_EXPORT_PROLOGUE_H

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef struct { const char *p; ptrdiff_t n; } _GoString_;
#endif

#endif

/* Start of preamble from import "C" comments.  */


#line 3 "auth.go"
 #include <stdlib.h>

#line 1 "cgo-generated-wrapper"


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
typedef __SIZE_TYPE__ GoUintptr;
typedef float GoFloat32;
typedef double GoFloat64;
typedef float _Complex GoComplex64;
typedef double _Complex GoComplex128;

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

extern char* initialize(void* api, char* credentialsFile);
extern char* initializeWithJson(void* api, char* credentialsJson);
extern void verifyToken(GoInt64 port, char* idToken);
extern void verifyIDTokenAndCheckRevoked(GoInt64 port, char* idToken);
extern void revokeRefreshTokens(GoInt64 port, char* idToken);
extern void setCustomUserClaims(GoInt64 port, char* uid, char* claims);
extern void createUser(GoInt64 port, char* userJson);
extern void updateUser(GoInt64 port, unsigned char* buffer, GoInt size);
extern void deleteUser(GoInt64 port, char* uid);
extern void getCustomClaims(GoInt64 port, char* uid);
extern void createCustomTokenWithClaims(GoInt64 port, char* uid, char* claims);
extern void createCustomToken(GoInt64 port, char* uid);
extern void getUser(GoInt64 port, char* uid);
extern void getUserByEmail(GoInt64 port, char* email);
extern void getUserByPhoneNumber(GoInt64 port, char* phoneNumber);
extern void testComms(GoInt64 port, unsigned char* buffer, GoInt size);

#ifdef __cplusplus
}
#endif
