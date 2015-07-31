//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/internal/LocalVideo.java
//

#ifndef _ImActorModelEntityContentInternalLocalVideo_H_
#define _ImActorModelEntityContentInternalLocalVideo_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/internal/LocalDocument.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelEntityContentInternalLocalFastThumb;

@interface ImActorModelEntityContentInternalLocalVideo : ImActorModelEntityContentInternalLocalDocument

#pragma mark Public

- (instancetype)initWithBSBserValues:(BSBserValues *)values;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithNSString:(NSString *)fileName
                    withNSString:(NSString *)fileDescriptor
                         withInt:(jint)fileSize
                    withNSString:(NSString *)mimeType
withImActorModelEntityContentInternalLocalFastThumb:(ImActorModelEntityContentInternalLocalFastThumb *)fastThumb
                         withInt:(jint)w
                         withInt:(jint)h
                         withInt:(jint)duration;

- (jint)getDuration;

- (jint)getH;

- (jint)getW;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityContentInternalLocalVideo)

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalVideo_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_withInt_withInt_withInt_(ImActorModelEntityContentInternalLocalVideo *self, NSString *fileName, NSString *fileDescriptor, jint fileSize, NSString *mimeType, ImActorModelEntityContentInternalLocalFastThumb *fastThumb, jint w, jint h, jint duration);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalVideo *new_ImActorModelEntityContentInternalLocalVideo_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_withInt_withInt_withInt_(NSString *fileName, NSString *fileDescriptor, jint fileSize, NSString *mimeType, ImActorModelEntityContentInternalLocalFastThumb *fastThumb, jint w, jint h, jint duration) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalVideo_initWithByteArray_(ImActorModelEntityContentInternalLocalVideo *self, IOSByteArray *data);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalVideo *new_ImActorModelEntityContentInternalLocalVideo_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalVideo_initWithBSBserValues_(ImActorModelEntityContentInternalLocalVideo *self, BSBserValues *values);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalVideo *new_ImActorModelEntityContentInternalLocalVideo_initWithBSBserValues_(BSBserValues *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityContentInternalLocalVideo)

#endif // _ImActorModelEntityContentInternalLocalVideo_H_
