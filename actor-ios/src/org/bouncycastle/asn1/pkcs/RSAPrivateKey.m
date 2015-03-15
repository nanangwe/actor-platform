//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/pkcs/RSAPrivateKey.java
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
#include "org/bouncycastle/asn1/pkcs/RSAPrivateKey.h"

@interface OrgBouncycastleAsn1PkcsRSAPrivateKey () {
 @public
  JavaMathBigInteger *version__;
  JavaMathBigInteger *modulus_;
  JavaMathBigInteger *publicExponent_;
  JavaMathBigInteger *privateExponent_;
  JavaMathBigInteger *prime1_;
  JavaMathBigInteger *prime2_;
  JavaMathBigInteger *exponent1_;
  JavaMathBigInteger *exponent2_;
  JavaMathBigInteger *coefficient_;
  OrgBouncycastleAsn1ASN1Sequence *otherPrimeInfos_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, version__, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, modulus_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, publicExponent_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, privateExponent_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, prime1_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, prime2_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, exponent1_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, exponent2_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, coefficient_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSAPrivateKey, otherPrimeInfos_, OrgBouncycastleAsn1ASN1Sequence *)

@implementation OrgBouncycastleAsn1PkcsRSAPrivateKey

+ (OrgBouncycastleAsn1PkcsRSAPrivateKey *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                 withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1PkcsRSAPrivateKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1PkcsRSAPrivateKey *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1PkcsRSAPrivateKey_getInstanceWithId_(obj);
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)modulus
                    withJavaMathBigInteger:(JavaMathBigInteger *)publicExponent
                    withJavaMathBigInteger:(JavaMathBigInteger *)privateExponent
                    withJavaMathBigInteger:(JavaMathBigInteger *)prime1
                    withJavaMathBigInteger:(JavaMathBigInteger *)prime2
                    withJavaMathBigInteger:(JavaMathBigInteger *)exponent1
                    withJavaMathBigInteger:(JavaMathBigInteger *)exponent2
                    withJavaMathBigInteger:(JavaMathBigInteger *)coefficient {
  if (self = [super init]) {
    otherPrimeInfos_ = nil;
    self->version__ = JavaMathBigInteger_valueOfWithLong_(0);
    self->modulus_ = modulus;
    self->publicExponent_ = publicExponent;
    self->privateExponent_ = privateExponent;
    self->prime1_ = prime1;
    self->prime2_ = prime2;
    self->exponent1_ = exponent1;
    self->exponent2_ = exponent2;
    self->coefficient_ = coefficient;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    otherPrimeInfos_ = nil;
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    JavaMathBigInteger *v = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    if ([((JavaMathBigInteger *) nil_chk(v)) intValue] != 0 && [v intValue] != 1) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"wrong version for RSA private key"];
    }
    version__ = v;
    modulus_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    publicExponent_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    privateExponent_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    prime1_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    prime2_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    exponent1_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    exponent2_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    coefficient_ = [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class])))) getValue];
    if ([e hasMoreElements]) {
      otherPrimeInfos_ = (OrgBouncycastleAsn1ASN1Sequence *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Sequence class]);
    }
  }
  return self;
}

- (JavaMathBigInteger *)getVersion {
  return version__;
}

- (JavaMathBigInteger *)getModulus {
  return modulus_;
}

- (JavaMathBigInteger *)getPublicExponent {
  return publicExponent_;
}

- (JavaMathBigInteger *)getPrivateExponent {
  return privateExponent_;
}

- (JavaMathBigInteger *)getPrime1 {
  return prime1_;
}

- (JavaMathBigInteger *)getPrime2 {
  return prime2_;
}

- (JavaMathBigInteger *)getExponent1 {
  return exponent1_;
}

- (JavaMathBigInteger *)getExponent2 {
  return exponent2_;
}

- (JavaMathBigInteger *)getCoefficient {
  return coefficient_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:version__]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getModulus]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getPublicExponent]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getPrivateExponent]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getPrime1]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getPrime2]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getExponent1]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getExponent2]]];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:[self getCoefficient]]];
  if (otherPrimeInfos_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:otherPrimeInfos_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1PkcsRSAPrivateKey *)other {
  [super copyAllFieldsTo:other];
  other->version__ = version__;
  other->modulus_ = modulus_;
  other->publicExponent_ = publicExponent_;
  other->privateExponent_ = privateExponent_;
  other->prime1_ = prime1_;
  other->prime2_ = prime2_;
  other->exponent1_ = exponent1_;
  other->exponent2_ = exponent2_;
  other->coefficient_ = coefficient_;
  other->otherPrimeInfos_ = otherPrimeInfos_;
}

@end

OrgBouncycastleAsn1PkcsRSAPrivateKey *OrgBouncycastleAsn1PkcsRSAPrivateKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1PkcsRSAPrivateKey_init();
  return OrgBouncycastleAsn1PkcsRSAPrivateKey_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1PkcsRSAPrivateKey *OrgBouncycastleAsn1PkcsRSAPrivateKey_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1PkcsRSAPrivateKey_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1PkcsRSAPrivateKey class]]) {
    return (OrgBouncycastleAsn1PkcsRSAPrivateKey *) check_class_cast(obj, [OrgBouncycastleAsn1PkcsRSAPrivateKey class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1PkcsRSAPrivateKey alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1PkcsRSAPrivateKey)