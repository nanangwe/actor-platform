//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ocsp/CrlID.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1GeneralizedTime.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERIA5String.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/ocsp/CrlID.h"

@interface OrgBouncycastleAsn1OcspCrlID () {
 @public
  OrgBouncycastleAsn1DERIA5String *crlUrl_;
  OrgBouncycastleAsn1ASN1Integer *crlNum_;
  OrgBouncycastleAsn1ASN1GeneralizedTime *crlTime_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1OcspCrlID, crlUrl_, OrgBouncycastleAsn1DERIA5String *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1OcspCrlID, crlNum_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1OcspCrlID, crlTime_, OrgBouncycastleAsn1ASN1GeneralizedTime *)

@implementation OrgBouncycastleAsn1OcspCrlID

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      OrgBouncycastleAsn1ASN1TaggedObject *o = (OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1TaggedObject class]);
      switch ([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(o)) getTagNo]) {
        case 0:
        crlUrl_ = OrgBouncycastleAsn1DERIA5String_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, YES);
        break;
        case 1:
        crlNum_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, YES);
        break;
        case 2:
        crlTime_ = OrgBouncycastleAsn1ASN1GeneralizedTime_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, YES);
        break;
        default:
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"unknown tag number: ", [o getTagNo])];
      }
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1OcspCrlID *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1OcspCrlID_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1DERIA5String *)getCrlUrl {
  return crlUrl_;
}

- (OrgBouncycastleAsn1ASN1Integer *)getCrlNum {
  return crlNum_;
}

- (OrgBouncycastleAsn1ASN1GeneralizedTime *)getCrlTime {
  return crlTime_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (crlUrl_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:0 withOrgBouncycastleAsn1ASN1Encodable:crlUrl_]];
  }
  if (crlNum_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:1 withOrgBouncycastleAsn1ASN1Encodable:crlNum_]];
  }
  if (crlTime_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:2 withOrgBouncycastleAsn1ASN1Encodable:crlTime_]];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1OcspCrlID *)other {
  [super copyAllFieldsTo:other];
  other->crlUrl_ = crlUrl_;
  other->crlNum_ = crlNum_;
  other->crlTime_ = crlTime_;
}

@end

OrgBouncycastleAsn1OcspCrlID *OrgBouncycastleAsn1OcspCrlID_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1OcspCrlID_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1OcspCrlID class]]) {
    return (OrgBouncycastleAsn1OcspCrlID *) check_class_cast(obj, [OrgBouncycastleAsn1OcspCrlID class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1OcspCrlID alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1OcspCrlID)