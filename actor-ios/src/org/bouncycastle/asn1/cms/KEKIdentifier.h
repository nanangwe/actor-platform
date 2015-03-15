//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/KEKIdentifier.java
//

#ifndef _OrgBouncycastleAsn1CmsKEKIdentifier_H_
#define _OrgBouncycastleAsn1CmsKEKIdentifier_H_

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1GeneralizedTime;
@class OrgBouncycastleAsn1ASN1OctetString;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1TaggedObject;
@class OrgBouncycastleAsn1CmsOtherKeyAttribute;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmsKEKIdentifier : OrgBouncycastleAsn1ASN1Object {
}

- (instancetype)initWithByteArray:(IOSByteArray *)keyIdentifier
withOrgBouncycastleAsn1ASN1GeneralizedTime:(OrgBouncycastleAsn1ASN1GeneralizedTime *)date
withOrgBouncycastleAsn1CmsOtherKeyAttribute:(OrgBouncycastleAsn1CmsOtherKeyAttribute *)other;

+ (OrgBouncycastleAsn1CmsKEKIdentifier *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                withBoolean:(jboolean)explicit_;

+ (OrgBouncycastleAsn1CmsKEKIdentifier *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1ASN1OctetString *)getKeyIdentifier;

- (OrgBouncycastleAsn1ASN1GeneralizedTime *)getDate;

- (OrgBouncycastleAsn1CmsOtherKeyAttribute *)getOther;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmsKEKIdentifier)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsKEKIdentifier *OrgBouncycastleAsn1CmsKEKIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsKEKIdentifier *OrgBouncycastleAsn1CmsKEKIdentifier_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmsKEKIdentifier)

#endif // _OrgBouncycastleAsn1CmsKEKIdentifier_H_