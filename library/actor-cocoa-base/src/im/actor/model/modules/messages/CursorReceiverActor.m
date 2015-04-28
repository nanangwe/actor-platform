//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/CursorReceiverActor.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/CursorReceiverActor.java"

#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestMessageReceived.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/CursorActor.h"
#include "im/actor/model/modules/messages/CursorReceiverActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcException.h"

@interface ImActorModelModulesMessagesCursorReceiverActor_MarkReceived () {
 @public
  AMPeer *peer_;
  jlong date_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorReceiverActor_MarkReceived, peer_, AMPeer *)

@interface ImActorModelModulesMessagesCursorReceiverActor_$1 () {
 @public
  ImActorModelModulesMessagesCursorReceiverActor *this$0_;
  AMPeer *val$peer_;
  jlong val$date_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorReceiverActor_$1, this$0_, ImActorModelModulesMessagesCursorReceiverActor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorReceiverActor_$1, val$peer_, AMPeer *)


#line 14
@implementation ImActorModelModulesMessagesCursorReceiverActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return
#line 17
  [super initWithLong:ImActorModelModulesUtilsModuleActor_CURSOR_RECEIVED withImActorModelModulesModules:messenger];
}


#line 21
- (void)performWithAMPeer:(AMPeer *)peer
                 withLong:(jlong)date {
  ImActorModelApiOutPeer *outPeer = [self buidOutPeerWithAMPeer:peer];
  
#line 24
  if (outPeer == nil) {
    return;
  }
  
#line 28
  [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestMessageReceived alloc] initWithImActorModelApiOutPeer:outPeer withLong:date] withAMRpcCallback:[[ImActorModelModulesMessagesCursorReceiverActor_$1 alloc] initWithImActorModelModulesMessagesCursorReceiverActor:self withAMPeer:peer withLong:date]];
}


#line 42
- (void)onReceiveWithId:(id)message {
  
#line 43
  if ([message isKindOfClass:[ImActorModelModulesMessagesCursorReceiverActor_MarkReceived class]]) {
    ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *received = (ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *) check_class_cast(message, [ImActorModelModulesMessagesCursorReceiverActor_MarkReceived class]);
    [self moveCursorWithAMPeer:[((ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *) nil_chk(received)) getPeer] withLong:[received getDate]];
  }
  else {
    
#line 47
    [super onReceiveWithId:message];
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorReceiverActor)


#line 51
@implementation ImActorModelModulesMessagesCursorReceiverActor_MarkReceived


#line 55
- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)date {
  if (self = [super init]) {
    
#line 56
    self->peer_ = peer;
    
#line 57
    self->date_ = date;
  }
  return self;
}


#line 60
- (AMPeer *)getPeer {
  
#line 61
  return peer_;
}


#line 64
- (jlong)getDate {
  
#line 65
  return date_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorReceiverActor_MarkReceived)

@implementation ImActorModelModulesMessagesCursorReceiverActor_$1


#line 30
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseVoid *)response {
  
#line 31
  [this$0_ onCompletedWithAMPeer:val$peer_ withLong:val$date_];
}


#line 35
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  [this$0_ onErrorWithAMPeer:val$peer_ withLong:val$date_];
}

- (instancetype)initWithImActorModelModulesMessagesCursorReceiverActor:(ImActorModelModulesMessagesCursorReceiverActor *)outer$
                                                            withAMPeer:(AMPeer *)capture$0
                                                              withLong:(jlong)capture$1 {
  this$0_ = outer$;
  val$peer_ = capture$0;
  val$date_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesCursorReceiverActor_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$peer_ = val$peer_;
  other->val$date_ = val$date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorReceiverActor_$1)