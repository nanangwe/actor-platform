//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/pkcs/SafeBag.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1Set.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DLSequence.h"
#include "org/bouncycastle/asn1/DLTaggedObject.h"
#include "org/bouncycastle/asn1/pkcs/SafeBag.h"

@interface OrgBouncycastleAsn1PkcsSafeBag () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *bagId_;
  id<OrgBouncycastleAsn1ASN1Encodable> bagValue_;
  OrgBouncycastleAsn1ASN1Set *bagAttributes_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsSafeBag, bagId_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsSafeBag, bagValue_, id<OrgBouncycastleAsn1ASN1Encodable>)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsSafeBag, bagAttributes_, OrgBouncycastleAsn1ASN1Set *)

@implementation OrgBouncycastleAsn1PkcsSafeBag

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid
                           withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj {
  if (self = [super init]) {
    self->bagId_ = oid;
    self->bagValue_ = obj;
    self->bagAttributes_ = nil;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid
                           withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj
                                 withOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)bagAttributes {
  if (self = [super init]) {
    self->bagId_ = oid;
    self->bagValue_ = obj;
    self->bagAttributes_ = bagAttributes;
  }
  return self;
}

+ (OrgBouncycastleAsn1PkcsSafeBag *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1PkcsSafeBag_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->bagId_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
    self->bagValue_ = [((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(((OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1ASN1TaggedObject class])))) getObject];
    if ([seq size] == 3) {
      self->bagAttributes_ = (OrgBouncycastleAsn1ASN1Set *) check_class_cast([seq getObjectAtWithInt:2], [OrgBouncycastleAsn1ASN1Set class]);
    }
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getBagId {
  return bagId_;
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getBagValue {
  return bagValue_;
}

- (OrgBouncycastleAsn1ASN1Set *)getBagAttributes {
  return bagAttributes_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:bagId_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DLTaggedObject alloc] initWithBoolean:YES withInt:0 withOrgBouncycastleAsn1ASN1Encodable:bagValue_]];
  if (bagAttributes_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:bagAttributes_];
  }
  return [[OrgBouncycastleAsn1DLSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1PkcsSafeBag *)other {
  [super copyAllFieldsTo:other];
  other->bagId_ = bagId_;
  other->bagValue_ = bagValue_;
  other->bagAttributes_ = bagAttributes_;
}

@end

OrgBouncycastleAsn1PkcsSafeBag *OrgBouncycastleAsn1PkcsSafeBag_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1PkcsSafeBag_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1PkcsSafeBag class]]) {
    return (OrgBouncycastleAsn1PkcsSafeBag *) check_class_cast(obj, [OrgBouncycastleAsn1PkcsSafeBag class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1PkcsSafeBag alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1PkcsSafeBag)