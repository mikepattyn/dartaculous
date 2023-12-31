import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'events.g.dart';

@mapMapped
class AggregateId {
  final String id;
  final String type;

  AggregateId.of(this.id, this.type);
}

@MapMapped(knownSubClasses: [Command, Event], mapEnumToString: true)
abstract class Message {
  final String messageId;
  final AggregateId? aggregateId;
  final DateTime timestamp;
  final String payloadType;
  final dynamic payload;
  final MessageStatus status;

  const Message({
    required this.messageId,
    required this.aggregateId,
    required this.timestamp,
    required this.payloadType,
    required this.payload,
    required this.status,
  });
}

@MapMapped(mapEnumToString: true)
class Command extends Message {
  final String? userId;

  Command(
      {required super.messageId,
      super.aggregateId,
      required super.timestamp,
      required super.payloadType,
      required super.payload,
      required super.status,
      this.userId});

  String get commandId => messageId;
}

@MapMapped(knownSubClasses: [IntegrationEvent], mapEnumToString: true)
class Event extends Message {
  final String? userId;

  const Event({
    required super.messageId,
    required super.timestamp,
    this.userId,
    required super.aggregateId,
    required super.payloadType,
    required super.payload,
    required super.status,
  });

  String get eventId => messageId;
}

/// Don't include "aggregateId" or "userId", it will always be null...
/// Watch out, not explicitly setting mapEnumToString will map to index,
/// which is incompatible with the other classes...
@mapMapped
class IntegrationEvent extends Event {
  const IntegrationEvent({
    required super.messageId,
    required super.timestamp,
    String? processId,
    required super.payloadType,
    required super.payload,
    required super.status,
  }) : super(aggregateId: null);
}

@MapMapped(mapEnumToString: true)
enum MessageStatus { notProcessed, processing, processed }

@mapMapped
class MessageRecord {
  late Map<String, Message> messageMap;
  late List<Message> messageList;
  late Set<Message> messageSet;
}

@mapMapped
class MessageRecord2 {
  late final Map<String, Message> messageMap;
  late final List<Message> messageList;
  late final Set<Message> messageSet;
}

@mapMapped
class MessageRecord3 {
  final Map<String, Message> messageMap = {};
  final List<Message> messageList = [];
  final Set<Message> messageSet = {};
}

@mapMapped
class MessageRecord4 {
  final Map<String, Message> messageMap;
  final List<Message> messageList;
  final Set<Message> messageSet;

  MessageRecord4(this.messageMap, this.messageList, this.messageSet);
}

@mapMapped
class MessageRecord5 {
  final Map<String, Message> messageMap;
  final List<Message> messageList;
  final Set<Message> messageSet;

  MessageRecord5(
      {required this.messageMap,
      required this.messageList,
      required this.messageSet});
}
