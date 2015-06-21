//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseMessenger.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/BaseMessenger.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/Messenger.h"
#include "im/actor/model/MessengerEnvironment.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/DisplayLists.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/mvvm/BindedDisplayList.h"
#include "im/actor/model/viewmodel/ConversationVM.h"
#include "im/actor/model/viewmodel/ConversationVMCallback.h"

@interface AMBaseMessenger () {
 @public
  ImActorModelModulesDisplayLists *displayLists_;
  AMMessengerEnvironmentEnum *environment_;
}

@end

J2OBJC_FIELD_SETTER(AMBaseMessenger, displayLists_, ImActorModelModulesDisplayLists *)
J2OBJC_FIELD_SETTER(AMBaseMessenger, environment_, AMMessengerEnvironmentEnum *)

@implementation AMBaseMessenger

- (instancetype)initWithEnvironment:(AMMessengerEnvironmentEnum *)environment
                  withConfiguration:(AMConfiguration *)configuration {
  AMBaseMessenger_initWithEnvironment_withConfiguration_(self, environment, configuration);
  return self;
}

- (AMConversationVM *)buildConversationVMWithPeer:(AMPeer *)peer
                                  withDisplayList:(AMBindedDisplayList *)displayList
                                     withCallback:(id<AMConversationVMCallback>)callback {
  return new_AMConversationVM_initWithAMPeer_withAMConversationVMCallback_withImActorModelModulesModules_withAMBindedDisplayList_(peer, callback, modules_, displayList);
}

- (AMBindedDisplayList *)getDialogsGlobalList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getDialogsGlobalList];
}

- (AMBindedDisplayList *)getMessagesGlobalListWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getMessagesGlobalListWithAMPeer:peer];
}

- (AMBindedDisplayList *)buildMessagesListWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildNewChatListWithAMPeer:peer withBoolean:NO];
}

- (AMBindedDisplayList *)getMediaGlobalListWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getMessagesMediaListWithAMPeer:peer];
}

- (jint)getMediaCountWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getMediaCountWithAMPeer:peer];
}

- (AMBindedDisplayList *)getContactsGlobalListWithContact {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getContactsGlobalList];
}

- (AMBindedDisplayList *)buildContactDisplayList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildNewContactListWithBoolean:NO];
}

- (AMBindedDisplayList *)buildSearchList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildNewSearchListWithBoolean:NO];
}

- (jlong)loadLastReadState:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) loadReadStateWithAMPeer:peer];
}

@end

void AMBaseMessenger_initWithEnvironment_withConfiguration_(AMBaseMessenger *self, AMMessengerEnvironmentEnum *environment, AMConfiguration *configuration) {
  (void) AMMessenger_initWithConfiguration_(self, configuration);
  self->environment_ = environment;
  self->displayLists_ = new_ImActorModelModulesDisplayLists_initWithAMMessengerEnvironmentEnum_withImActorModelModulesModules_(environment, self->modules_);
}

AMBaseMessenger *new_AMBaseMessenger_initWithEnvironment_withConfiguration_(AMMessengerEnvironmentEnum *environment, AMConfiguration *configuration) {
  AMBaseMessenger *self = [AMBaseMessenger alloc];
  AMBaseMessenger_initWithEnvironment_withConfiguration_(self, environment, configuration);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMBaseMessenger)