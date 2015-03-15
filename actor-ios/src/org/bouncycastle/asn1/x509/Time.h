//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/Time.java
//

#ifndef _OrgBouncycastleAsn1X509Time_H_
#define _OrgBouncycastleAsn1X509Time_H_

@class JavaUtilDate;
@class JavaUtilLocale;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1TaggedObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Choice.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1X509Time : OrgBouncycastleAsn1ASN1Object < OrgBouncycastleAsn1ASN1Choice > {
 @public
  OrgBouncycastleAsn1ASN1Primitive *time_;
}

+ (OrgBouncycastleAsn1X509Time *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                        withBoolean:(jboolean)explicit_;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)time;

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time;

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time
                  withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (OrgBouncycastleAsn1X509Time *)getInstanceWithId:(id)obj;

- (NSString *)getTime;

- (JavaUtilDate *)getDate;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X509Time)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509Time, time_, OrgBouncycastleAsn1ASN1Primitive *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Time *OrgBouncycastleAsn1X509Time_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Time *OrgBouncycastleAsn1X509Time_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X509Time)

#endif // _OrgBouncycastleAsn1X509Time_H_