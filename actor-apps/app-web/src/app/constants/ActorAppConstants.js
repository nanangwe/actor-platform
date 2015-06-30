import keymirror from 'keymirror';

export const AuthSteps = {
  PHONE_WAIT: 1,
  CODE_WAIT: 2,
  SIGNUP_NAME_WAIT: 3,
  COMPLETED: 4
};

export const ActionTypes = keymirror({
  APP_HIDDEN: null,
  APP_VISIBLE: null,

  AUTH_SMS_REQUEST_SUCCESS: null,
  AUTH_SMS_REQUEST_FAILURE: null,

  SEND_CODE_SUCCESS: null,
  SEND_CODE_FAILURE: null,

  SEND_SIGNUP_SUCCESS: null,
  SEND_SIGNUP_FAILURE: null,

  SET_LOGGED_IN: null,
  START_SIGNUP: null,

  AUTH_WRONG_NUMBER_CLICK: null,

  DIALOGS_CHANGED: null,
  SELECT_DIALOG_PEER: null,
  SELECTED_DIALOG_INFO_CHANGED: null,

  SEND_MESSAGE_TEXT: null,
  SEND_MESSAGE_FILE: null,
  SEND_MESSAGE_PHOTO: null,

  SHOW_ACTIVITY: null,
  HIDE_ACTIVITY: null,

  CONTACT_ADD: null,
  CONTACT_REMOVE: null,
  CONTACT_LIST_SHOW: null,
  CONTACT_LIST_HIDE: null,
  CONTACT_LIST_CHANGED: null,

  CREATE_GROUP_MODAL_OPEN: null,
  CREATE_GROUP_MODAL_CLOSE: null,

  NOTIFICATION_CHANGE: null,

  DRAFT_LOAD: null,
  DRAFT_SAVE: null
});

export const PeerTypes = {
  USER: 'user',
  GROUP: 'group'
};

export const ActivityTypes = keymirror({
  USER_PROFILE: null,
  GROUP_PROFILE: null
});

export const KeyCodes = {
  ESC: 27,
  ENTER: 13
};

export default {
  AuthSteps: AuthSteps,

  PeerTypes: PeerTypes,

  ActionTypes: ActionTypes,

  ActivityTypes: ActivityTypes,

  KeyCodes: KeyCodes
};