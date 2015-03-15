//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/AttributeTypeAndValue.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/crmf/AttributeTypeAndValue.h"

@interface OrgBouncycastleAsn1CrmfAttributeTypeAndValue () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *type_;
  id<OrgBouncycastleAsn1ASN1Encodable> value_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfAttributeTypeAndValue, type_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfAttributeTypeAndValue, value_, id<OrgBouncycastleAsn1ASN1Encodable>)

@implementation OrgBouncycastleAsn1CrmfAttributeTypeAndValue

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    type_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
    value_ = (id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast([seq getObjectAtWithInt:1], @protocol(OrgBouncycastleAsn1ASN1Encodable));
  }
  return self;
}

+ (OrgBouncycastleAsn1CrmfAttributeTypeAndValue *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CrmfAttributeTypeAndValue_getInstanceWithId_(o);
}

- (instancetype)initWithNSString:(NSString *)oid
withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)value {
  return [self initOrgBouncycastleAsn1CrmfAttributeTypeAndValueWithOrgBouncycastleAsn1ASN1ObjectIdentifier:[[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:oid] withOrgBouncycastleAsn1ASN1Encodable:value];
}

- (instancetype)initOrgBouncycastleAsn1CrmfAttributeTypeAndValueWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)type
                                                                       withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)value {
  if (self = [super init]) {
    self->type_ = type;
    self->value_ = value;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)type
                           withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)value {
  return [self initOrgBouncycastleAsn1CrmfAttributeTypeAndValueWithOrgBouncycastleAsn1ASN1ObjectIdentifier:type withOrgBouncycastleAsn1ASN1Encodable:value];
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getType {
  return type_;
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getValue {
  return value_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:type_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:value_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CrmfAttributeTypeAndValue *)other {
  [super copyAllFieldsTo:other];
  other->type_ = type_;
  other->value_ = value_;
}

@end

OrgBouncycastleAsn1CrmfAttributeTypeAndValue *OrgBouncycastleAsn1CrmfAttributeTypeAndValue_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CrmfAttributeTypeAndValue_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CrmfAttributeTypeAndValue class]]) {
    return (OrgBouncycastleAsn1CrmfAttributeTypeAndValue *) check_class_cast(o, [OrgBouncycastleAsn1CrmfAttributeTypeAndValue class]);
  }
  if (o != nil) {
    return [[OrgBouncycastleAsn1CrmfAttributeTypeAndValue alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CrmfAttributeTypeAndValue)