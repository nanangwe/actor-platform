//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/DSAParameter.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x509/DSAParameter.h"

@interface OrgBouncycastleAsn1X509DSAParameter ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1X509DSAParameter

+ (OrgBouncycastleAsn1X509DSAParameter *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X509DSAParameter_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1X509DSAParameter *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509DSAParameter_getInstanceWithId_(obj);
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)g {
  if (self = [super init]) {
    self->p_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:p];
    self->q_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:q];
    self->g_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:g];
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] != 3) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
    id<JavaUtilEnumeration> e = [seq getObjects];
    p_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement]);
    q_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([e nextElement]);
    g_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([e nextElement]);
  }
  return self;
}

- (JavaMathBigInteger *)getP {
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(p_)) getPositiveValue];
}

- (JavaMathBigInteger *)getQ {
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(q_)) getPositiveValue];
}

- (JavaMathBigInteger *)getG {
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(g_)) getPositiveValue];
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:p_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:q_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:g_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509DSAParameter *)other {
  [super copyAllFieldsTo:other];
  other->p_ = p_;
  other->q_ = q_;
  other->g_ = g_;
}

@end

OrgBouncycastleAsn1X509DSAParameter *OrgBouncycastleAsn1X509DSAParameter_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X509DSAParameter_init();
  return OrgBouncycastleAsn1X509DSAParameter_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1X509DSAParameter *OrgBouncycastleAsn1X509DSAParameter_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509DSAParameter_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509DSAParameter class]]) {
    return (OrgBouncycastleAsn1X509DSAParameter *) check_class_cast(obj, [OrgBouncycastleAsn1X509DSAParameter class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1X509DSAParameter alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509DSAParameter)