import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';

part 'events.g.dart';

/// Named constructor, unnamed parameters
@mapMapped
@defaultsProvider
class AggregateId {

  final String id;
  final String type;

  AggregateId.of(this.id, this.type);
}

/// Class using final fields
@MapMapped(useDefaultsProvider: true)
@defaultsProvider
class Event {

  final String messageId;
  final AggregateId? aggregateId;
  final DateTime timestamp;
  final String payloadType;
  final Payload payload;
  final MessageStatus status;

  const Event({
    required this.messageId,
    required this.aggregateId,
    required this.timestamp,
    required this.payloadType,
    required this.payload,
    required this.status,
  });
}

/// Class using late fields
@MapMapped(useDefaultsProvider: true)
@defaultsProvider
class Command {

  late String messageId;
  late AggregateId? aggregateId;
  late DateTime timestamp;
  late String payloadType;
  late Payload payload;
  late MessageStatus status;
}

@mapMapped
enum MessageStatus {
  notProcessed,
  processing,
  processed
}


/// Abstract parent class, solely used as marker,
/// The corresponding DefaultsProvider needs to implement createWithDefaults()
@mapMapped
@defaultsProvider
class Payload {

  late String value;
}
