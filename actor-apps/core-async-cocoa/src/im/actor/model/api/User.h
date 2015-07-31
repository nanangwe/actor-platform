//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/User.java
//

#ifndef _APUser_H_
#define _APUser_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class APAvatar;
@class APSexEnum;
@class BSBserValues;
@class BSBserWriter;
@class JavaLangBoolean;
@protocol JavaUtilList;

@interface APUser : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
              withAPSexEnum:(APSexEnum *)sex
               withAPAvatar:(APAvatar *)avatar
           withJavaUtilList:(id<JavaUtilList>)contactInfo
        withJavaLangBoolean:(JavaLangBoolean *)isBot;

- (jlong)getAccessHash;

- (APAvatar *)getAvatar;

- (id<JavaUtilList>)getContactInfo;

- (jint)getId;

- (NSString *)getLocalName;

- (NSString *)getName;

- (APSexEnum *)getSex;

- (JavaLangBoolean *)isBot;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUser)

FOUNDATION_EXPORT void APUser_initWithInt_withLong_withNSString_withNSString_withAPSexEnum_withAPAvatar_withJavaUtilList_withJavaLangBoolean_(APUser *self, jint id_, jlong accessHash, NSString *name, NSString *localName, APSexEnum *sex, APAvatar *avatar, id<JavaUtilList> contactInfo, JavaLangBoolean *isBot);

FOUNDATION_EXPORT APUser *new_APUser_initWithInt_withLong_withNSString_withNSString_withAPSexEnum_withAPAvatar_withJavaUtilList_withJavaLangBoolean_(jint id_, jlong accessHash, NSString *name, NSString *localName, APSexEnum *sex, APAvatar *avatar, id<JavaUtilList> contactInfo, JavaLangBoolean *isBot) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUser_init(APUser *self);

FOUNDATION_EXPORT APUser *new_APUser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUser)

typedef APUser ImActorModelApiUser;

#endif // _APUser_H_
