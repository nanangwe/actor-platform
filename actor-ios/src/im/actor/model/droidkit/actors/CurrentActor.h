//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/CurrentActor.java
//

#ifndef _ImActorModelDroidkitActorsCurrentActor_H_
#define _ImActorModelDroidkitActorsCurrentActor_H_

@class ImActorModelDroidkitActorsActor;
@class JavaLangThreadLocal;

#include "J2ObjC_header.h"

@interface ImActorModelDroidkitActorsCurrentActor : NSObject {
}

+ (void)setCurrentActorWithImActorModelDroidkitActorsActor:(ImActorModelDroidkitActorsActor *)actor;

+ (ImActorModelDroidkitActorsActor *)getCurrentActor;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL ImActorModelDroidkitActorsCurrentActor_initialized;
J2OBJC_STATIC_INIT(ImActorModelDroidkitActorsCurrentActor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT void ImActorModelDroidkitActorsCurrentActor_setCurrentActorWithImActorModelDroidkitActorsActor_(ImActorModelDroidkitActorsActor *actor);

FOUNDATION_EXPORT ImActorModelDroidkitActorsActor *ImActorModelDroidkitActorsCurrentActor_getCurrentActor();

FOUNDATION_EXPORT JavaLangThreadLocal *ImActorModelDroidkitActorsCurrentActor_currentActor_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitActorsCurrentActor, currentActor_, JavaLangThreadLocal *)
J2OBJC_STATIC_FIELD_SETTER(ImActorModelDroidkitActorsCurrentActor, currentActor_, JavaLangThreadLocal *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitActorsCurrentActor)

#endif // _ImActorModelDroidkitActorsCurrentActor_H_