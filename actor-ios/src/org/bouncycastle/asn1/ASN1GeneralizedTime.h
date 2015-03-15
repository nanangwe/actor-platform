//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1GeneralizedTime.java
//

#ifndef _OrgBouncycastleAsn1ASN1GeneralizedTime_H_
#define _OrgBouncycastleAsn1ASN1GeneralizedTime_H_

@class IOSByteArray;
@class JavaUtilDate;
@class JavaUtilLocale;
@class OrgBouncycastleAsn1ASN1OutputStream;
@class OrgBouncycastleAsn1ASN1TaggedObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"

@interface OrgBouncycastleAsn1ASN1GeneralizedTime : OrgBouncycastleAsn1ASN1Primitive {
}

+ (OrgBouncycastleAsn1ASN1GeneralizedTime *)getInstanceWithId:(id)obj;

+ (OrgBouncycastleAsn1ASN1GeneralizedTime *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                   withBoolean:(jboolean)explicit_;

- (instancetype)initWithNSString:(NSString *)time;

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time;

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time
                  withJavaUtilLocale:(JavaUtilLocale *)locale;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (NSString *)getTimeString;

- (NSString *)getTime;

- (JavaUtilDate *)getDate;

- (jboolean)isConstructed;

- (jint)encodedLength;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg;

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1ASN1GeneralizedTime)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1GeneralizedTime *OrgBouncycastleAsn1ASN1GeneralizedTime_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1GeneralizedTime *OrgBouncycastleAsn1ASN1GeneralizedTime_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1ASN1GeneralizedTime)

#endif // _OrgBouncycastleAsn1ASN1GeneralizedTime_H_