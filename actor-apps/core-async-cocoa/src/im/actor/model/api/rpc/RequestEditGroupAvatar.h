//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestEditGroupAvatar.java
//

#ifndef _APRequestEditGroupAvatar_H_
#define _APRequestEditGroupAvatar_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APFileLocation;
@class APGroupOutPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestEditGroupAvatar_HEADER 86

@interface APRequestEditGroupAvatar : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                              withLong:(jlong)rid
                    withAPFileLocation:(APFileLocation *)fileLocation;

+ (APRequestEditGroupAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (APFileLocation *)getFileLocation;

- (APGroupOutPeer *)getGroupPeer;

- (jint)getHeaderKey;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestEditGroupAvatar)

J2OBJC_STATIC_FIELD_GETTER(APRequestEditGroupAvatar, HEADER, jint)

FOUNDATION_EXPORT APRequestEditGroupAvatar *APRequestEditGroupAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestEditGroupAvatar_initWithAPGroupOutPeer_withLong_withAPFileLocation_(APRequestEditGroupAvatar *self, APGroupOutPeer *groupPeer, jlong rid, APFileLocation *fileLocation);

FOUNDATION_EXPORT APRequestEditGroupAvatar *new_APRequestEditGroupAvatar_initWithAPGroupOutPeer_withLong_withAPFileLocation_(APGroupOutPeer *groupPeer, jlong rid, APFileLocation *fileLocation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestEditGroupAvatar_init(APRequestEditGroupAvatar *self);

FOUNDATION_EXPORT APRequestEditGroupAvatar *new_APRequestEditGroupAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestEditGroupAvatar)

typedef APRequestEditGroupAvatar ImActorModelApiRpcRequestEditGroupAvatar;

#endif // _APRequestEditGroupAvatar_H_
