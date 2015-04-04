//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaAtomicLong.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaAtomicLong.java"

#include "J2ObjC_source.h"
#include "im/actor/model/jvm/threads/JavaAtomicLong.h"
#include "java/util/concurrent/atomic/AtomicLong.h"


#line 10
@implementation ImActorModelJvmThreadsJavaAtomicLong


#line 13
- (instancetype)initWithLong:(jlong)value {
  if (self = [super init]) {
    
#line 14
    atomicLong_ = [[JavaUtilConcurrentAtomicAtomicLong alloc] initWithLong:value];
  }
  return self;
}


#line 18
- (jlong)get {
  
#line 19
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(atomicLong_)) get];
}


#line 23
- (jlong)incrementAndGet {
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(atomicLong_)) incrementAndGet];
}


#line 28
- (jlong)getAndIncrement {
  
#line 29
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(atomicLong_)) getAndIncrement];
}


#line 33
- (void)setWithLong:(jlong)v {
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(atomicLong_)) setWithLong:v];
}

- (void)copyAllFieldsTo:(ImActorModelJvmThreadsJavaAtomicLong *)other {
  [super copyAllFieldsTo:other];
  other->atomicLong_ = atomicLong_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaAtomicLong)