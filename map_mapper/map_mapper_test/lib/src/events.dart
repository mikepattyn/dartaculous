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

  Command({
    required String messageId,
    AggregateId? aggregateId,
    required DateTime timestamp,
    required String payloadType,
    required dynamic payload,
    required MessageStatus status,
    this.userId
  }) : super(
      messageId: messageId,
      aggregateId: aggregateId,
      timestamp: timestamp,
      payloadType: payloadType,
      payload: payload,
      status: status);

  String get commandId => messageId;
}

@MapMapped(knownSubClasses: [IntegrationEvent], mapEnumToString: true)
class Event extends Message {

  final String? userId;

  const Event({
    required String messageId,
    required DateTime timestamp,
    this.userId,
    required AggregateId? aggregateId,
    required String payloadType,
    required dynamic payload,
    required MessageStatus status,
  })  : super(
          messageId: messageId,
          aggregateId: aggregateId,
          timestamp: timestamp,
          payloadType: payloadType,
          payload: payload,
          status: status);

  String get eventId => messageId;
}


/// Don't include "aggregateId" or "userId", it will always be null...
/// Watch out, not explicitly setting mapEnumToString will map to index,
/// which is incompatible with the other classes...
@mapMapped
class IntegrationEvent extends Event {

  const IntegrationEvent({
    required String messageId,
    required DateTime timestamp,
    String? processId,
    required String payloadType,
    required dynamic payload,
    required MessageStatus status,
  })
      :
        super(
          messageId: messageId,
          timestamp: timestamp,
          aggregateId: null,
          payloadType: payloadType,
          payload: payload,
          status: status);
}

@MapMapped(mapEnumToString: true)
enum MessageStatus {
  notProcessed,
  processing,
  processed
}

@mapMapped
class MessageRecord {

  late Map<String, Message> messages;

}
