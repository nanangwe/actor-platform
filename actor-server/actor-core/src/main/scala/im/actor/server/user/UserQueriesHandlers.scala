package im.actor.server.user

import akka.actor.ActorSystem
import akka.pattern.pipe

import im.actor.api.rpc.users.{ User ⇒ ApiUser }
import im.actor.server.api.ApiConversions._
import im.actor.server.commons.KeyValueMappings
import im.actor.server.util.ContactsUtils.localNameKey
import im.actor.server.util.{ ACLUtils, UserUtils }
import shardakka.ShardakkaExtension

private[user] trait UserQueriesHandlers {
  self: UserProcessor ⇒

  import UserQueries._

  protected def getAuthIds(state: User): Unit = {
    sender() ! GetAuthIdsResponse(state.authIds.toSeq)
  }

  protected def getApiStruct(state: User, clientUserId: Int, clientAuthId: Long)(implicit system: ActorSystem): Unit = {
    val kv = ShardakkaExtension(system).simpleKeyValue(KeyValueMappings.LocalNames)
    kv.get(localNameKey(clientUserId, userId)) map { localName ⇒
      GetApiStructResponse(ApiUser(
        id = userId,
        accessHash = ACLUtils.userAccessHash(clientAuthId, userId, state.accessSalt),
        name = state.name,
        localName = UserUtils.normalizeLocalName(localName),
        sex = Some(state.sex),
        avatar = state.avatar,
        phone = state.phones.headOption.orElse(Some(0)),
        isBot = Some(state.isBot),
        contactInfo = UserUtils.defaultUserContactRecords(state.phones.toVector, state.emails.toVector),
        nick = state.nickname,
        about = state.about
      ))
    } pipeTo sender()
  }

  protected def getContactRecords(state: User): Unit = {
    sender() ! GetContactRecordsResponse(state.phones, state.emails)
  }

  protected def checkAccessHash(state: User, senderAuthId: Long, accessHash: Long): Unit =
    sender() ! CheckAccessHashResponse(isCorrect = accessHash == ACLUtils.userAccessHash(senderAuthId, userId, state.accessSalt))

}
