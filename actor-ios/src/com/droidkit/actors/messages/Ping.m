//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/messages/Ping.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/messages/Ping.h"

@interface ComDroidkitActorsMessagesPing ()
- (instancetype)init;
@end

BOOL ComDroidkitActorsMessagesPing_initialized = NO;

@implementation ComDroidkitActorsMessagesPing

ComDroidkitActorsMessagesPing * ComDroidkitActorsMessagesPing_INSTANCE_;

- (instancetype)init {
  return [super init];
}

- (NSString *)description {
  return @"Ping";
}

+ (void)initialize {
  if (self == [ComDroidkitActorsMessagesPing class]) {
    JreStrongAssignAndConsume(&ComDroidkitActorsMessagesPing_INSTANCE_, nil, [[ComDroidkitActorsMessagesPing alloc] init]);
    J2OBJC_SET_INITIALIZED(ComDroidkitActorsMessagesPing)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Ping", NULL, 0x2, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x19, "Lcom.droidkit.actors.messages.Ping;", &ComDroidkitActorsMessagesPing_INSTANCE_,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMessagesPing = { 1, "Ping", "com.droidkit.actors.messages", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComDroidkitActorsMessagesPing;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMessagesPing)