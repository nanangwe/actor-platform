//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSendAuthCallObsolete.java
//

#ifndef _APRequestSendAuthCallObsolete_H_
#define _APRequestSendAuthCallObsolete_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestSendAuthCallObsolete_HEADER 90

@interface APRequestSendAuthCallObsolete : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey;

+ (APRequestSendAuthCallObsolete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getApiKey;

- (jint)getAppId;

- (jint)getHeaderKey;

- (jlong)getPhoneNumber;

- (NSString *)getSmsHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestSendAuthCallObsolete)

J2OBJC_STATIC_FIELD_GETTER(APRequestSendAuthCallObsolete, HEADER, jint)

FOUNDATION_EXPORT APRequestSendAuthCallObsolete *APRequestSendAuthCallObsolete_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestSendAuthCallObsolete_initWithLong_withNSString_withInt_withNSString_(APRequestSendAuthCallObsolete *self, jlong phoneNumber, NSString *smsHash, jint appId, NSString *apiKey);

FOUNDATION_EXPORT APRequestSendAuthCallObsolete *new_APRequestSendAuthCallObsolete_initWithLong_withNSString_withInt_withNSString_(jlong phoneNumber, NSString *smsHash, jint appId, NSString *apiKey) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestSendAuthCallObsolete_init(APRequestSendAuthCallObsolete *self);

FOUNDATION_EXPORT APRequestSendAuthCallObsolete *new_APRequestSendAuthCallObsolete_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestSendAuthCallObsolete)

typedef APRequestSendAuthCallObsolete ImActorModelApiRpcRequestSendAuthCallObsolete;

#endif // _APRequestSendAuthCallObsolete_H_
