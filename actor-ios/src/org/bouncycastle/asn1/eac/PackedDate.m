//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/eac/PackedDate.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "java/util/SimpleTimeZone.h"
#include "org/bouncycastle/asn1/eac/PackedDate.h"
#include "org/bouncycastle/util/Arrays.h"

__attribute__((unused)) static IOSByteArray *OrgBouncycastleAsn1EacPackedDate_convertWithNSString_(OrgBouncycastleAsn1EacPackedDate *self, NSString *sTime);

@interface OrgBouncycastleAsn1EacPackedDate () {
 @public
  IOSByteArray *time_;
}

- (IOSByteArray *)convertWithNSString:(NSString *)sTime;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacPackedDate, time_, IOSByteArray *)

@implementation OrgBouncycastleAsn1EacPackedDate

- (instancetype)initWithNSString:(NSString *)time {
  if (self = [super init]) {
    self->time_ = OrgBouncycastleAsn1EacPackedDate_convertWithNSString_(self, time);
  }
  return self;
}

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time {
  if (self = [super init]) {
    JavaTextSimpleDateFormat *dateF = [[JavaTextSimpleDateFormat alloc] initWithNSString:@"yyMMdd'Z'"];
    [dateF setTimeZoneWithJavaUtilTimeZone:[[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:@"Z"]];
    self->time_ = OrgBouncycastleAsn1EacPackedDate_convertWithNSString_(self, [dateF formatWithJavaUtilDate:time]);
  }
  return self;
}

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time
                  withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (self = [super init]) {
    JavaTextSimpleDateFormat *dateF = [[JavaTextSimpleDateFormat alloc] initWithNSString:@"yyMMdd'Z'" withJavaUtilLocale:locale];
    [dateF setTimeZoneWithJavaUtilTimeZone:[[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:@"Z"]];
    self->time_ = OrgBouncycastleAsn1EacPackedDate_convertWithNSString_(self, [dateF formatWithJavaUtilDate:time]);
  }
  return self;
}

- (IOSByteArray *)convertWithNSString:(NSString *)sTime {
  return OrgBouncycastleAsn1EacPackedDate_convertWithNSString_(self, sTime);
}

- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  if (self = [super init]) {
    self->time_ = bytes;
  }
  return self;
}

- (JavaUtilDate *)getDate {
  JavaTextSimpleDateFormat *dateF = [[JavaTextSimpleDateFormat alloc] initWithNSString:@"yyyyMMdd"];
  return [dateF parseWithNSString:JreStrcat("$$", @"20", [self description])];
}

- (NSUInteger)hash {
  return OrgBouncycastleUtilArrays_hashCodeWithByteArray_(time_);
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgBouncycastleAsn1EacPackedDate class]])) {
    return NO;
  }
  OrgBouncycastleAsn1EacPackedDate *other = (OrgBouncycastleAsn1EacPackedDate *) check_class_cast(o, [OrgBouncycastleAsn1EacPackedDate class]);
  return OrgBouncycastleUtilArrays_areEqualWithByteArray_withByteArray_(time_, ((OrgBouncycastleAsn1EacPackedDate *) nil_chk(other))->time_);
}

- (NSString *)description {
  IOSCharArray *dateC = [IOSCharArray newArrayWithLength:((IOSByteArray *) nil_chk(time_))->size_];
  for (jint i = 0; i != dateC->size_; i++) {
    *IOSCharArray_GetRef(dateC, i) = (jchar) ((IOSByteArray_Get(time_, i) & (jint) 0xff) + '0');
  }
  return [NSString stringWithCharacters:dateC];
}

- (IOSByteArray *)getEncoding {
  return time_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EacPackedDate *)other {
  [super copyAllFieldsTo:other];
  other->time_ = time_;
}

@end

IOSByteArray *OrgBouncycastleAsn1EacPackedDate_convertWithNSString_(OrgBouncycastleAsn1EacPackedDate *self, NSString *sTime) {
  IOSCharArray *digs = [((NSString *) nil_chk(sTime)) toCharArray];
  IOSByteArray *date = [IOSByteArray newArrayWithLength:6];
  for (jint i = 0; i != 6; i++) {
    *IOSByteArray_GetRef(date, i) = (jbyte) (IOSCharArray_Get(nil_chk(digs), i) - '0');
  }
  return date;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EacPackedDate)