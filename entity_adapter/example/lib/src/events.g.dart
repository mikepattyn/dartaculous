// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $AggregateIdDefaultsProvider {
  const $AggregateIdDefaultsProvider();

  AggregateId createWithDefaults({
    String? id,
    String? type,
  }) {
    return AggregateId.of(
      id ?? this.id,
      type ?? this.type,
    );
  }

  String get id => '';
  String get type => '';
}

class $EventDefaultsProvider {
  const $EventDefaultsProvider();

  Event createWithDefaults({
    String? messageId,
    DateTime? timestamp,
    String? payloadType,
    Payload? payload,
    MessageStatus? status,
  }) {
    return Event(
      messageId: messageId ?? this.messageId,
      aggregateId: null,
      timestamp: timestamp ?? this.timestamp,
      payloadType: payloadType ?? this.payloadType,
      payload: payload ?? this.payload,
      status: status ?? this.status,
    );
  }

  String get messageId => '';
  DateTime get timestamp => throw UnimplementedError();
  String get payloadType => '';
  Payload get payload => $PayloadDefaultsProvider().createWithDefaults();
  MessageStatus get status => throw UnimplementedError();
}

class $CommandDefaultsProvider {
  const $CommandDefaultsProvider();

  Command createWithDefaults({
    String? messageId,
    DateTime? timestamp,
    String? payloadType,
    Payload? payload,
    MessageStatus? status,
  }) {
    return Command();
  }

  String get messageId => '';
  DateTime get timestamp => throw UnimplementedError();
  String get payloadType => '';
  Payload get payload => $PayloadDefaultsProvider().createWithDefaults();
  MessageStatus get status => throw UnimplementedError();
}

class $PayloadDefaultsProvider {
  const $PayloadDefaultsProvider();

  Payload createWithDefaults({
    String? value,
  }) {
    return Payload();
  }

  String get value => '';
}

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

class $EventMapMapper extends MapMapper<Event> {
  const $EventMapMapper();

  @override
  Event fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();
    final defaultsProvider = $EventDefaultsProvider();

    return Event(
      messageId: getValueOrDefault(
          $kh.fieldNameToMapKey('messageId'),
          () => defaultsProvider.messageId,
          (mapValue) => $kh.keyFromMap(map, 'messageId')),
      aggregateId: (map['aggregateId'] != null
          ? const $AggregateIdMapMapper().fromMap(map['aggregateId'])
          : null),
      timestamp: getValueOrDefault(
          map['timestamp'],
          () => defaultsProvider.timestamp,
          (mapValue) => DateTime.fromMicrosecondsSinceEpoch(mapValue)),
      payloadType: getValueOrDefault(map['payloadType'],
          () => defaultsProvider.payloadType, (mapValue) => mapValue as String),
      payload: getValueOrDefault(map['payload'], () => defaultsProvider.payload,
          (mapValue) => const $PayloadMapMapper().fromMap(mapValue)),
      status: getValueOrDefault(
          map['status'],
          () => defaultsProvider.status,
          (mapValue) => mapValue is String
              ? MessageStatus.values.firstWhere((v) => v.name == mapValue)
              : MessageStatus.values[mapValue as int]),
    );
  }

  @override
  Map<String, dynamic> toMap(Event instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.messageId, 'messageId');
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = const $PayloadMapMapper().toMap(instance.payload);
    map['status'] = instance.status.index;

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
  $PayloadFieldNames get payload => $PayloadFieldNames.sub(prefix + _payload);
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
    final defaultsProvider = $CommandDefaultsProvider();

    return Command()
      ..messageId = getValueOrDefault(
          $kh.fieldNameToMapKey('messageId'),
          () => defaultsProvider.messageId,
          (mapValue) => $kh.keyFromMap(map, 'messageId'))
      ..aggregateId = (map['aggregateId'] != null
          ? const $AggregateIdMapMapper().fromMap(map['aggregateId'])
          : null)
      ..timestamp = getValueOrDefault(
          map['timestamp'],
          () => defaultsProvider.timestamp,
          (mapValue) => DateTime.fromMicrosecondsSinceEpoch(mapValue))
      ..payloadType = getValueOrDefault(map['payloadType'],
          () => defaultsProvider.payloadType, (mapValue) => mapValue as String)
      ..payload = getValueOrDefault(
          map['payload'],
          () => defaultsProvider.payload,
          (mapValue) => const $PayloadMapMapper().fromMap(mapValue))
      ..status = getValueOrDefault(
          map['status'],
          () => defaultsProvider.status,
          (mapValue) => mapValue is String
              ? MessageStatus.values.firstWhere((v) => v.name == mapValue)
              : MessageStatus.values[mapValue as int]);
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
    map['payload'] = const $PayloadMapMapper().toMap(instance.payload);
    map['status'] = instance.status.index;

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
  $PayloadFieldNames get payload => $PayloadFieldNames.sub(prefix + _payload);
  static const _status = 'status';
  String get status => prefix + _status;

  @override
  String toString() => fieldName;
}

class $PayloadMapMapper extends MapMapper<Payload> {
  const $PayloadMapMapper();

  @override
  Payload fromMap(Map<String, dynamic> map) {
    return Payload()..value = map['value'] as String;
  }

  @override
  Map<String, dynamic> toMap(Payload instance) {
    final map = <String, dynamic>{};

    map['value'] = instance.value;

    return map;
  }
}

extension $PayloadMapExtension on Payload {
  Map<String, dynamic> toMap() => const $PayloadMapMapper().toMap(this);
  static Payload fromMap(Map<String, dynamic> map) =>
      const $PayloadMapMapper().fromMap(map);
}

extension $MapPayloadExtension on Map<String, dynamic> {
  Payload toPayload() => const $PayloadMapMapper().fromMap(this);
}

class $PayloadFieldNames {
  final String fieldName;
  final String prefix;

  $PayloadFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $PayloadFieldNames()
      : fieldName = '',
        prefix = '';

  static const _value = 'value';
  String get value => prefix + _value;

  @override
  String toString() => fieldName;
}

class $MessageStatusMapMapper {
  const $MessageStatusMapMapper();
  MessageStatus fromMap(dynamic e) => MessageStatus.values[e];
  dynamic toMap(MessageStatus e) => e.index;
}
