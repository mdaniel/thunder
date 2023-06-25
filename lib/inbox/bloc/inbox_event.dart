part of 'inbox_bloc.dart';

abstract class InboxEvent extends Equatable {
  const InboxEvent();

  @override
  List<Object> get props => [];
}

class GetInboxEvent extends InboxEvent {
  final bool showAll;

  const GetInboxEvent({this.showAll = false});
}

class MarkReplyAsReadEvent extends InboxEvent {
  final int commentReplyId;
  final bool read;

  const MarkReplyAsReadEvent({required this.commentReplyId, required this.read});
}

class CreateInboxCommentReplyEvent extends InboxEvent {
  final String content;
  final int postId;
  final int parentCommentId;

  const CreateInboxCommentReplyEvent({required this.content, required this.postId, required this.parentCommentId});
}