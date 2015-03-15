//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/KDFFeedbackParameters.java
//

#ifndef _OrgBouncycastleCryptoParamsKDFFeedbackParameters_H_
#define _OrgBouncycastleCryptoParamsKDFFeedbackParameters_H_

@class IOSByteArray;

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/DerivationParameters.h"

#define OrgBouncycastleCryptoParamsKDFFeedbackParameters_UNUSED_R -1

@interface OrgBouncycastleCryptoParamsKDFFeedbackParameters : NSObject < OrgBouncycastleCryptoDerivationParameters > {
}

+ (OrgBouncycastleCryptoParamsKDFFeedbackParameters *)createWithCounterWithByteArray:(IOSByteArray *)ki
                                                                       withByteArray:(IOSByteArray *)iv
                                                                       withByteArray:(IOSByteArray *)fixedInputData
                                                                             withInt:(jint)r;

+ (OrgBouncycastleCryptoParamsKDFFeedbackParameters *)createWithoutCounterWithByteArray:(IOSByteArray *)ki
                                                                          withByteArray:(IOSByteArray *)iv
                                                                          withByteArray:(IOSByteArray *)fixedInputData;

- (IOSByteArray *)getKI;

- (IOSByteArray *)getIV;

- (jboolean)useCounter;

- (jint)getR;

- (IOSByteArray *)getFixedInputData;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsKDFFeedbackParameters)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsKDFFeedbackParameters *OrgBouncycastleCryptoParamsKDFFeedbackParameters_createWithCounterWithByteArray_withByteArray_withByteArray_withInt_(IOSByteArray *ki, IOSByteArray *iv, IOSByteArray *fixedInputData, jint r);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsKDFFeedbackParameters *OrgBouncycastleCryptoParamsKDFFeedbackParameters_createWithoutCounterWithByteArray_withByteArray_withByteArray_(IOSByteArray *ki, IOSByteArray *iv, IOSByteArray *fixedInputData);

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoParamsKDFFeedbackParameters, UNUSED_R, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsKDFFeedbackParameters)

#endif // _OrgBouncycastleCryptoParamsKDFFeedbackParameters_H_