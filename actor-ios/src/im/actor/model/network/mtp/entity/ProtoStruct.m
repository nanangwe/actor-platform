//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/ProtoStruct.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoObject.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "java/io/IOException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation MTProtoStruct

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  return [super initWithBSDataInput:stream];
}

- (instancetype)init {
  return [super init];
}

- (void)writeObjectWithBSDataOutput:(BSDataOutput *)bs {
  jbyte header = [self getHeader];
  if (header != 0) {
    [((BSDataOutput *) nil_chk(bs)) writeByteWithByte:header];
  }
  [self writeBodyWithBSDataOutput:bs];
}

- (MTProtoObject *)readObjectWithBSDataInput:(BSDataInput *)bs {
  [self readBodyWithBSDataInput:bs];
  return self;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTProtoStruct)