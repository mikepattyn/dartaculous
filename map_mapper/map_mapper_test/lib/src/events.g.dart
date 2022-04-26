// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AggregateIdMapMapper extends MapMapper<AggregateId> {
  const $AggregateIdMapMapper();

  @override
  AggregateId fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return AggregateId.of(
      $kh.keyFromMap(map, 'id'),
      map['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(AggregateId instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.id, 'id');
    map['type'] = instance.type;

    return map;
  }
}

extension $AggregateIdMapExtension on AggregateId {
  Map<String, dynamic> toMap() => const $AggregateIdMapMapper().toMap(this);
  static AggregateId fromMap(Map<String, dynamic> map) =>
      const $AggregateIdMapMapper().fromMap(map);
}

extension $MapAggregateIdExtension on Map<String, dynamic> {
  AggregateId toAggregateId() => const $AggregateIdMapMapper().fromMap(this);
}

class $AggregateIdFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $AggregateIdFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $AggregateIdFieldNames()
      : fieldName = '',
        prefix = '';

  static const _id = 'id';
  String get id => prefix + $kh.fieldNameToMapKey(_id);
  static const _type = 'type';
  String get type => prefix + _type;

  @override
  String toString() => fieldName;
}

class $MessageMapMapper extends MapMapper<Message> {
  const $MessageMapMapper();

  @override
  Message fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case 'Message':
        throw UnimplementedError();
      case 'Command':
        return (const $CommandMapMapper()).fromMap(map);

      case 'Event':
        return (const $EventMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(Message instance) {
    if (instance is Command) {
      return {
        '\$type': 'Command',
        ...const $CommandMapMapper().toMap(instance),
      };
    }

    if (instance is Event) {
      return {
        '\$type': 'Event',
        ...const $EventMapMapper().toMap(instance),
      };
    }

    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    map['\$type'] = 'Message';

    $kh.keyToMap(map, instance.messageId, 'messageId');
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.name;

    return map;
  }
}

extension $MessageMapExtension on Message {
  Map<String, dynamic> toMap() => const $MessageMapMapper().toMap(this);
  static Message fromMap(Map<String, dynamic> map) =>
      const $MessageMapMapper().fromMap(map);
}

extension $MapMessageExtension on Map<String, dynamic> {
  Message toMessage() => const $MessageMapMapper().fromMap(this);
}

class $MessageFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $MessageFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $MessageFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + $kh.fieldNameToMapKey(_messageId);
  static const _aggregateId = 'aggregateId';
  $AggregateIdFieldNames get aggregateId =>
      $AggregateIdFieldNames.sub(prefix + _aggregateId);
  static const _timestamp = 'timestamp';
  String get timestamp => prefix + _timestamp;
  static const _payloadType = 'payloadType';
  String get payloadType => prefix + _payloadType;
  static const _payload = 'payload';
  String get payload => prefix + _payload;
  static const _status = 'status';
  String get status => prefix + _status;

  @override
  String toString() => fieldName;
}

class $CommandMapMapper extends MapMapper<Command> {
  const $CommandMapMapper();

  @override
  Command fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Command(
      messageId: $kh.keyFromMap(map, 'messageId'),
      aggregateId: (map['aggregateId'] != null
          ? const $AggregateIdMapMapper().fromMap(map['aggregateId'])
          : null),
      timestamp: DateTime.fromMicrosecondsSinceEpoch(map['timestamp']),
      payloadType: map['payloadType'] as String,
      payload: map['payload'] as dynamic,
      status: map['status'] is String
          ? MessageStatus.values.firstWhere((v) => v.name == map['status'])
          : MessageStatus.values[map['status'] as int],
      userId: map['userId'] == null ? null : $kh.keyFromMap(map, 'userId'),
    );
  }

  @override
  Map<String, dynamic> toMap(Command instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.messageId, 'messageId');
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.name;
    $kh.keyToMap(map, instance.userId ?? '', 'userId');

    return map;
  }
}

extension $CommandMapExtension on Command {
  Map<String, dynamic> toMap() => const $CommandMapMapper().toMap(this);
  static Command fromMap(Map<String, dynamic> map) =>
      const $CommandMapMapper().fromMap(map);
}

extension $MapCommandExtension on Map<String, dynamic> {
  Command toCommand() => const $CommandMapMapper().fromMap(this);
}

class $CommandFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $CommandFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $CommandFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + $kh.fieldNameToMapKey(_messageId);
  static const _aggregateId = 'aggregateId';
  $AggregateIdFieldNames get aggregateId =>
      $AggregateIdFieldNames.sub(prefix + _aggregateId);
  static const _timestamp = 'timestamp';
  String get timestamp => prefix + _timestamp;
  static const _payloadType = 'payloadType';
  String get payloadType => prefix + _payloadType;
  static const _payload = 'payload';
  String get payload => prefix + _payload;
  static const _status = 'status';
  String get status => prefix + _status;
  static const _userId = 'userId';
  String get userId => prefix + $kh.fieldNameToMapKey(_userId);

  @override
  String toString() => fieldName;
}

class $EventMapMapper extends MapMapper<Event> {
  const $EventMapMapper();

  @override
  Event fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case 'Event':
        return _fromMap(map);
      case 'IntegrationEvent':
        return (const $IntegrationEventMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  Event _fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Event(
      messageId: $kh.keyFromMap(map, 'messageId'),
      timestamp: DateTime.fromMicrosecondsSinceEpoch(map['timestamp']),
      userId: map['userId'] == null ? null : $kh.keyFromMap(map, 'userId'),
      aggregateId: (map['aggregateId'] != null
          ? const $AggregateIdMapMapper().fromMap(map['aggregateId'])
          : null),
      payloadType: map['payloadType'] as String,
      payload: map['payload'] as dynamic,
      status: map['status'] is String
          ? MessageStatus.values.firstWhere((v) => v.name == map['status'])
          : MessageStatus.values[map['status'] as int],
    );
  }

  @override
  Map<String, dynamic> toMap(Event instance) {
    if (instance is IntegrationEvent) {
      return {
        '\$type': 'IntegrationEvent',
        ...const $IntegrationEventMapMapper().toMap(instance),
      };
    }

    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    map['\$type'] = 'Event';

    $kh.keyToMap(map, instance.messageId, 'messageId');
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.name;
    $kh.keyToMap(map, instance.userId ?? '', 'userId');

    return map;
  }
}

extension $EventMapExtension on Event {
  Map<String, dynamic> toMap() => const $EventMapMapper().toMap(this);
  static Event fromMap(Map<String, dynamic> map) =>
      const $EventMapMapper().fromMap(map);
}

extension $MapEventExtension on Map<String, dynamic> {
  Event toEvent() => const $EventMapMapper().fromMap(this);
}

class $EventFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $EventFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $EventFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + $kh.fieldNameToMapKey(_messageId);
  static const _aggregateId = 'aggregateId';
  $AggregateIdFieldNames get aggregateId =>
      $AggregateIdFieldNames.sub(prefix + _aggregateId);
  static const _timestamp = 'timestamp';
  String get timestamp => prefix + _timestamp;
  static const _payloadType = 'payloadType';
  String get payloadType => prefix + _payloadType;
  static const _payload = 'payload';
  String get payload => prefix + _payload;
  static const _status = 'status';
  String get status => prefix + _status;
  static const _userId = 'userId';
  String get userId => prefix + $kh.fieldNameToMapKey(_userId);

  @override
  String toString() => fieldName;
}

class $IntegrationEventMapMapper extends MapMapper<IntegrationEvent> {
  const $IntegrationEventMapMapper();

  @override
  IntegrationEvent fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return IntegrationEvent(
      messageId: $kh.keyFromMap(map, 'messageId'),
      timestamp: DateTime.fromMicrosecondsSinceEpoch(map['timestamp']),
      payloadType: map['payloadType'] as String,
      payload: map['payload'] as dynamic,
      status: map['status'] is String
          ? MessageStatus.values.firstWhere((v) => v.name == map['status'])
          : MessageStatus.values[map['status'] as int],
    );
  }

  @override
  Map<String, dynamic> toMap(IntegrationEvent instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.messageId, 'messageId');
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.index;
    $kh.keyToMap(map, instance.userId ?? '', 'userId');

    return map;
  }
}

extension $IntegrationEventMapExtension on IntegrationEvent {
  Map<String, dynamic> toMap() =>
      const $IntegrationEventMapMapper().toMap(this);
  static IntegrationEvent fromMap(Map<String, dynamic> map) =>
      const $IntegrationEventMapMapper().fromMap(map);
}

extension $MapIntegrationEventExtension on Map<String, dynamic> {
  IntegrationEvent toIntegrationEvent() =>
      const $IntegrationEventMapMapper().fromMap(this);
}

class $IntegrationEventFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $IntegrationEventFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $IntegrationEventFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + $kh.fieldNameToMapKey(_messageId);
  static const _aggregateId = 'aggregateId';
  $AggregateIdFieldNames get aggregateId =>
      $AggregateIdFieldNames.sub(prefix + _aggregateId);
  static const _timestamp = 'timestamp';
  String get timestamp => prefix + _timestamp;
  static const _payloadType = 'payloadType';
  String get payloadType => prefix + _payloadType;
  static const _payload = 'payload';
  String get payload => prefix + _payload;
  static const _status = 'status';
  String get status => prefix + _status;
  static const _userId = 'userId';
  String get userId => prefix + $kh.fieldNameToMapKey(_userId);

  @override
  String toString() => fieldName;
}

class $MessageStatusMapMapper {
  const $MessageStatusMapMapper();
  MessageStatus fromMap(dynamic e) => MessageStatus.values[e];
  dynamic toMap(MessageStatus e) => e.index;
}
