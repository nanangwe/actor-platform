//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/ElGamalPrivateKeyParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/params/ElGamalParameters.h"
#include "org/bouncycastle/crypto/params/ElGamalPrivateKeyParameters.h"

@interface OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters () {
 @public
  JavaMathBigInteger *x_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters, x_, JavaMathBigInteger *)

@implementation OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)x
withOrgBouncycastleCryptoParamsElGamalParameters:(OrgBouncycastleCryptoParamsElGamalParameters *)params {
  if (self = [super initWithBoolean:YES withOrgBouncycastleCryptoParamsElGamalParameters:params]) {
    self->x_ = x;
  }
  return self;
}

- (JavaMathBigInteger *)getX {
  return x_;
}

- (jboolean)isEqual:(id)obj {
  if (!([obj isKindOfClass:[OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters class]])) {
    return NO;
  }
  OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters *pKey = (OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters *) check_class_cast(obj, [OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters class]);
  if (![((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters *) nil_chk(pKey)) getX])) isEqual:x_]) {
    return NO;
  }
  return [super isEqual:obj];
}

- (NSUInteger)hash {
  return ((jint) [((JavaMathBigInteger *) nil_chk([self getX])) hash]);
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters)