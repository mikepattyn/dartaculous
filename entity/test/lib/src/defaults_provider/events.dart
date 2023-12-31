import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

part 'events.g.dart';

/// Named constructor, unnamed parameters
@defaultsProvider
class AggregateId {
  final String id;
  final String type;

  AggregateId.of(this.id, this.type);
}

@defaultsProvider
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

@defaultsProvider
class Command extends Message {
  final String? userId;

  Command({
    required super.messageId,
    super.aggregateId,
    required super.timestamp,
    required super.payloadType,
    required super.payload,
    required super.status,
    this.userId,
  });

  String get commandId => messageId;
}

@defaultsProvider
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
@defaultsProvider
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

@defaultsProvider
enum MessageStatus { notProcessed, processing, processed }

/// Class referring to Payload, will try to call ``$PayloadDefaultsProvider.createWithDefaults()``
@defaultsProvider
class StandAlonePayloadConsumer {
  final String messageId;
  final Payload payload;

  StandAlonePayloadConsumer(this.messageId, this.payload);
}

/// Class referring to Payload
@defaultsProvider
class StandAloneMessageConsumer {
  final String messageId;
  final Message message;

  StandAloneMessageConsumer(this.messageId, this.message);
}

/// Abstract parent class, solely used as marker,
/// The corresponding DefaultsProvider needs to implement createWithDefaults()
@defaultsProvider
abstract class Payload {}

/// Concrete implementation
@defaultsProvider
class ConcretePayload {
  late String value;
}

/// Abstract parent class without any (constructor) fields should not result in
/// `_superDefaultsProvider` being generated for children...
@defaultsProvider
abstract class ParentWithoutFields {
  String get one;
}

@defaultsProvider
class ChildOfParentWithoutFields extends ParentWithoutFields {
  late String one;
}
