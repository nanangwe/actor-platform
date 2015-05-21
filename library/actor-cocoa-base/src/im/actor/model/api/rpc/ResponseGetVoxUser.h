//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetVoxUser.java
//

#ifndef _ImActorModelApiRpcResponseGetVoxUser_H_
#define _ImActorModelApiRpcResponseGetVoxUser_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiRpcResponseGetVoxUser_HEADER 132

@interface ImActorModelApiRpcResponseGetVoxUser : ImActorModelNetworkParserResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)callNumber;

+ (ImActorModelApiRpcResponseGetVoxUser *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getCallNumber;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseGetVoxUser)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseGetVoxUser, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetVoxUser *ImActorModelApiRpcResponseGetVoxUser_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcResponseGetVoxUser_initWithNSString_(ImActorModelApiRpcResponseGetVoxUser *self, NSString *callNumber);

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetVoxUser *new_ImActorModelApiRpcResponseGetVoxUser_initWithNSString_(NSString *callNumber) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcResponseGetVoxUser_init(ImActorModelApiRpcResponseGetVoxUser *self);

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetVoxUser *new_ImActorModelApiRpcResponseGetVoxUser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseGetVoxUser)

#endif // _ImActorModelApiRpcResponseGetVoxUser_H_