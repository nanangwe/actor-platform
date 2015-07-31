//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/Avatar.java
//

#ifndef _APAvatar_H_
#define _APAvatar_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class APAvatarImage;
@class BSBserValues;
@class BSBserWriter;

@interface APAvatar : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPAvatarImage:(APAvatarImage *)smallImage
                    withAPAvatarImage:(APAvatarImage *)largeImage
                    withAPAvatarImage:(APAvatarImage *)fullImage;

- (APAvatarImage *)getFullImage;

- (APAvatarImage *)getLargeImage;

- (APAvatarImage *)getSmallImage;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APAvatar)

FOUNDATION_EXPORT void APAvatar_initWithAPAvatarImage_withAPAvatarImage_withAPAvatarImage_(APAvatar *self, APAvatarImage *smallImage, APAvatarImage *largeImage, APAvatarImage *fullImage);

FOUNDATION_EXPORT APAvatar *new_APAvatar_initWithAPAvatarImage_withAPAvatarImage_withAPAvatarImage_(APAvatarImage *smallImage, APAvatarImage *largeImage, APAvatarImage *fullImage) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APAvatar_init(APAvatar *self);

FOUNDATION_EXPORT APAvatar *new_APAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APAvatar)

typedef APAvatar ImActorModelApiAvatar;

#endif // _APAvatar_H_
