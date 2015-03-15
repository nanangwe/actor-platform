//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/PKIMessage.java
//

#ifndef _OrgBouncycastleAsn1CmpPKIMessage_H_
#define _OrgBouncycastleAsn1CmpPKIMessage_H_

@class IOSObjectArray;
@class OrgBouncycastleAsn1ASN1EncodableVector;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1CmpPKIBody;
@class OrgBouncycastleAsn1CmpPKIHeader;
@class OrgBouncycastleAsn1DERBitString;
@protocol OrgBouncycastleAsn1ASN1Encodable;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmpPKIMessage : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CmpPKIMessage *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1CmpPKIHeader:(OrgBouncycastleAsn1CmpPKIHeader *)header
                      withOrgBouncycastleAsn1CmpPKIBody:(OrgBouncycastleAsn1CmpPKIBody *)body
                    withOrgBouncycastleAsn1DERBitString:(OrgBouncycastleAsn1DERBitString *)protection
          withOrgBouncycastleAsn1CmpCMPCertificateArray:(IOSObjectArray *)extraCerts;

- (instancetype)initWithOrgBouncycastleAsn1CmpPKIHeader:(OrgBouncycastleAsn1CmpPKIHeader *)header
                      withOrgBouncycastleAsn1CmpPKIBody:(OrgBouncycastleAsn1CmpPKIBody *)body
                    withOrgBouncycastleAsn1DERBitString:(OrgBouncycastleAsn1DERBitString *)protection;

- (instancetype)initWithOrgBouncycastleAsn1CmpPKIHeader:(OrgBouncycastleAsn1CmpPKIHeader *)header
                      withOrgBouncycastleAsn1CmpPKIBody:(OrgBouncycastleAsn1CmpPKIBody *)body;

- (OrgBouncycastleAsn1CmpPKIHeader *)getHeader;

- (OrgBouncycastleAsn1CmpPKIBody *)getBody;

- (OrgBouncycastleAsn1DERBitString *)getProtection;

- (IOSObjectArray *)getExtraCerts;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmpPKIMessage)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmpPKIMessage *OrgBouncycastleAsn1CmpPKIMessage_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmpPKIMessage)

#endif // _OrgBouncycastleAsn1CmpPKIMessage_H_