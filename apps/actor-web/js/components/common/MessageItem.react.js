'use strict';

var React = require('react');
var PureRenderMixin = require('react/addons').addons.PureRenderMixin;

var classNames = require('classnames');
var emojify = require('emojify.js');
var hljs = require('highlight.js');
var marked = require('marked');
var memoize = require('memoizee');

emojify.setConfig({
  mode: 'data-uri'
});

var processText = function(text, opts) {
  var opts = opts || {};
  var markedOpts = opts.marked || {};

  var markedText = marked(text, markedOpts);
  // need hack with replace because of https://github.com/Ranks/emojify.js/issues/127
  var emojifiedText = emojify.replace(markedText.replace(/<p>/g, '<p> '));

  return(emojifiedText);
};

var memoizedProcessText = memoize(processText, {
  length: 1000,
  maxAge: 60 * 60 * 1000,
  max: 1000
}); // 1h expire, max 1000 elements

var AvatarItem = require('./AvatarItem.react');

var ActorAppConstants = require('../../constants/ActorAppConstants');
var DialogActionCreators = require('../../actions/DialogActionCreators');

var mdRenderer = new marked.Renderer();
mdRenderer.link = function(href, title, text) {
  var external, newWindow, out;
  external = /^https?:\/\/.+$/.test(href);
  newWindow = external || title === 'newWindow';
  out = "<a href=\"" + href + "\"";
  if (newWindow) {
    out += ' target="_blank"';
  }
  if (title && title !== 'newWindow') {
    out += " title=\"" + title + "\"";
  }
  return (out + ">" + text + "</a>");
};

var MessageItem = React.createClass({
  mixins: [PureRenderMixin],

  propTypes: {
    message: React.PropTypes.object.isRequired
  },

  _markedOptions: {
    sanitize: true,
    breaks: true,
    highlight: function (code) {
      return hljs.highlightAuto(code).value;
    },
    renderer: mdRenderer
  },

  componentWillMount: function() {
    this._renderTextContent(this.props);
  },

  componentWillReceiveProps: function(props) {
    this._renderTextContent(props);
  },

  render: function() {
    var message = this.props.message;
    var titleClassName = "color--" + message.sender.placeholder;

    var avatar =
      <a onClick={this._onClick}>
        <AvatarItem title={message.sender.title}
                    image={message.sender.avatar}
                    placeholder={message.sender.placeholder}
                    size="small"/>
      </a>;

    var header =
      <header className="message__header row">
        <h3 className="message__sender col-xs">
          <span className={titleClassName} onClick={this._onClick}>
            {message.sender.title}
          </span>
        </h3>
        <MessageItem.State message={message}/>
        <time className="message__timestamp">{message.date}</time>
      </header>;

    if (message.content.content == 'service') {
      avatar = null;
      header = null;
    }

    return(
      <li className="message row">
        {avatar}
        <div className="message__body col-xs">
          {header}
          <MessageItem.Content content={message.content}/>
        </div>
      </li>
    );
  },

  _renderTextContent: function(props) {
    if (props.message.content.content == 'text') {
      props.message.content.html = memoizedProcessText(
        props.message.content.text,
        {
          marked: this._markedOptions
        }
      );
    }
  },

  _onClick: function() {
    DialogActionCreators.selectDialogPeerUser(this.props.message.sender.peer.id)
  }
});

MessageItem.Content = React.createClass({
  mixins: [PureRenderMixin],

  propTypes: {
    content: React.PropTypes.object.isRequired
  },

  getInitialState: function() {
    return {isPhotoWide: false};
  },

  render: function() {
    var content = this.props.content;
    var isPhotoWide = this.state.isPhotoWide;
    var contentClassName = classNames('message__content', {
      'message__content--service': content.content == 'service',
      'message__content--text': content.content == 'text',
      'message__content--photo': content.content == 'photo',
      'message__content--photo--wide': isPhotoWide,
      'message__content--document': content.content == 'document',
      'message__content--unsupported': content.content == 'unsupported'
    });

    switch (content.content) {
      case 'service':
        return (
          <div className={contentClassName}>
            {content.text}
          </div>
        );
      case 'text':
        return (
          <div className={contentClassName}
               dangerouslySetInnerHTML={{__html: content.html}}>
          </div>
        );
      case 'photo':
        var original = null;
        var preview = <img className="photo photo--preview"
                           width={content.w}
                           height={content.h}
                           src={content.preview}/>;
        if (content.fileUrl) {
          original = <img className="photo photo--original"
                          width={content.w}
                          height={content.h}
                          src={content.fileUrl}/>;
        }

        var toggleIcon;
        if (isPhotoWide) {
          toggleIcon = <i className="material-icons">&#xE5D1;</i>;
        } else {
          toggleIcon = <i className="material-icons">&#xE5D0;</i>;
        }

        return (
          <div className={contentClassName}>
            <a onClick={this._togglePhotoWidth}>{toggleIcon}</a>
            {original}
            {preview}
          </div>
        );
      case 'document':
        return (
          <div className={contentClassName}>
            <a className="document" href={content.fileUrl}>
              <img className="document__icon" src="assets/img/icons/ic_attach_file_24px.svg"/>
              <span className="document__filename">{content.fileName}</span>
            </a>
          </div>
        );
      default:
    }
  },

  _togglePhotoWidth: function() {
    this.setState({isPhotoWide: !this.state.isPhotoWide});
  }
});

MessageItem.State = React.createClass({
  propTypes: {
    message: React.PropTypes.object.isRequired
  },
  render: function() {
    var message = this.props.message;

    if (message.content.content == 'service') {
      return null;
    } else {
      var icon = null;

      switch(message.state) {
        case 'pending':
          //icon = <img src="assets/img/icons/png/ic_access_time_2x_gray.png"
          //            className="status status--penging"/>;
          icon = <i className="status status--penging material-icons">access_time</i>;
          break;
        case 'sent':
          //icon = <img src="assets/img/icons/png/ic_done_2x_gray.png"
          //            className="status status--sent"/>;
          icon = <i className="status status--sent material-icons">done</i>;
          break;
        case 'received':
          //icon = <img src="assets/img/icons/png/ic_done_all_2x_gray.png"
          //            className="status status--received"/>;
          icon = <i className="status status--received material-icons">done_all</i>;
          break;
        case 'read':
          //icon = <img src="assets/img/icons/png/ic_done_all_2x_blue.png"
          //            className="status status--read"/>;
          icon = <i className="status status--read material-icons">done_all</i>;
          break;
        case 'error':
          //icon = <img src="assets/img/icons/png/ic_report_problem_2x_red.png"
          //            className="status status--error"/>;
          icon = <i className="status status--error material-icons">report_problem</i>;
          break;
        default:

      }

      return (
        <div className="message__status">{icon}</div>
      );
    }
  }
});

module.exports = MessageItem;