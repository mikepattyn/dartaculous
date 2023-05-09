// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AggregateIdMapMapper extends MapMapper<AggregateId> {
  const $AggregateIdMapMapper();
  static const $type = 'AggregateId';

  @override
  AggregateId fromMap(Map<String, dynamic> map) {
    return AggregateId.of(
      map['id'] as String,
      map['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(AggregateId instance) {
    final map = <String, dynamic>{};

    map['id'] = instance.id;
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
  final String fieldName;
  final String prefix;

  $AggregateIdFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $AggregateIdFieldNames()
      : fieldName = '',
        prefix = '';

  static const _id = 'id';
  String get id => prefix + _id;
  static const _type = 'type';
  String get type => prefix + _type;

  @override
  String toString() => fieldName;
}

class $MessageMapMapper extends MapMapper<Message> {
  const $MessageMapMapper();
  static const $type = 'Message';

  @override
  Message fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case $type:
        throw UnimplementedError();
      case $CommandMapMapper.$type:
        return (const $CommandMapMapper()).fromMap(map);

      case $EventMapMapper.$type:
        return (const $EventMapMapper()).fromMap(map);

      case $IntegrationEventMapMapper.$type:
        return (const $IntegrationEventMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(Message instance) {
    if (instance is Command) {
      return {
        '\$type': $CommandMapMapper.$type,
        ...const $CommandMapMapper().toMap(instance),
      };
    }

    if (instance is Event) {
      return {
        '\$type': $EventMapMapper.$type,
        ...const $EventMapMapper().toMap(instance),
      };
    }

    if (instance is IntegrationEvent) {
      return {
        '\$type': $IntegrationEventMapMapper.$type,
        ...const $IntegrationEventMapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'Message';

    map['messageId'] = instance.messageId;
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
  final String fieldName;
  final String prefix;

  $MessageFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $MessageFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + _messageId;
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
  static const $type = 'Command';

  @override
  Command fromMap(Map<String, dynamic> map) {
    return Command(
      messageId: map['messageId'] as String,
      aggregateId: (map['aggregateId'] != null
          ? const $AggregateIdMapMapper().fromMap(map['aggregateId'])
          : null),
      timestamp: DateTime.fromMicrosecondsSinceEpoch(map['timestamp']),
      payloadType: map['payloadType'] as String,
      payload: map['payload'] as dynamic,
      status: map['status'] is String
          ? MessageStatus.values.firstWhere((v) => v.name == map['status'])
          : MessageStatus.values[map['status'] as int],
      userId: map['userId'] as String?,
    );
  }

  @override
  Map<String, dynamic> toMap(Command instance) {
    final map = <String, dynamic>{};

    map['messageId'] = instance.messageId;
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.name;
    map['userId'] = instance.userId;

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
  final String fieldName;
  final String prefix;

  $CommandFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $CommandFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + _messageId;
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
  String get userId => prefix + _userId;

  @override
  String toString() => fieldName;
}

class $EventMapMapper extends MapMapper<Event> {
  const $EventMapMapper();
  static const $type = 'Event';

  @override
  Event fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case $type:
        return _fromMap(map);
      case $IntegrationEventMapMapper.$type:
        return (const $IntegrationEventMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  Event _fromMap(Map<String, dynamic> map) {
    return Event(
      messageId: map['messageId'] as String,
      timestamp: DateTime.fromMicrosecondsSinceEpoch(map['timestamp']),
      userId: map['userId'] as String?,
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
        '\$type': $IntegrationEventMapMapper.$type,
        ...const $IntegrationEventMapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'Event';

    map['messageId'] = instance.messageId;
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.name;
    map['userId'] = instance.userId;

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
  final String fieldName;
  final String prefix;

  $EventFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $EventFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + _messageId;
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
  String get userId => prefix + _userId;

  @override
  String toString() => fieldName;
}

class $IntegrationEventMapMapper extends MapMapper<IntegrationEvent> {
  const $IntegrationEventMapMapper();
  static const $type = 'IntegrationEvent';

  @override
  IntegrationEvent fromMap(Map<String, dynamic> map) {
    return IntegrationEvent(
      messageId: map['messageId'] as String,
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
    final map = <String, dynamic>{};

    map['messageId'] = instance.messageId;
    map['aggregateId'] = (instance.aggregateId == null
        ? null
        : const $AggregateIdMapMapper().toMap(instance.aggregateId!));
    map['timestamp'] = instance.timestamp.microsecondsSinceEpoch;
    map['payloadType'] = instance.payloadType;
    map['payload'] = instance.payload;
    map['status'] = instance.status.index;
    map['userId'] = instance.userId;

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
  final String fieldName;
  final String prefix;

  $IntegrationEventFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $IntegrationEventFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageId = 'messageId';
  String get messageId => prefix + _messageId;
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
  String get userId => prefix + _userId;

  @override
  String toString() => fieldName;
}

class $MessageRecordMapMapper extends MapMapper<MessageRecord> {
  const $MessageRecordMapMapper();
  static const $type = 'MessageRecord';

  @override
  MessageRecord fromMap(Map<String, dynamic> map) {
    return MessageRecord()
      ..messageMap = (map['messageMap'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, $MessageMapMapper().fromMap(v)))
      ..messageList = List<Message>.unmodifiable(
          map['messageList'].map((e) => const $MessageMapMapper().fromMap(e)))
      ..messageSet = Set<Message>.unmodifiable(List<Message>.from(
          map['messageSet'].map((e) => const $MessageMapMapper().fromMap(e))));
  }

  @override
  Map<String, dynamic> toMap(MessageRecord instance) {
    final map = <String, dynamic>{};

    map['messageMap'] = instance.messageMap
        .map((k, v) => MapEntry(k, $MessageMapMapper().toMap(v)));
    map['messageList'] = instance.messageList
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();
    map['messageSet'] = instance.messageSet
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();

    return map;
  }
}

extension $MessageRecordMapExtension on MessageRecord {
  Map<String, dynamic> toMap() => const $MessageRecordMapMapper().toMap(this);
  static MessageRecord fromMap(Map<String, dynamic> map) =>
      const $MessageRecordMapMapper().fromMap(map);
}

extension $MapMessageRecordExtension on Map<String, dynamic> {
  MessageRecord toMessageRecord() =>
      const $MessageRecordMapMapper().fromMap(this);
}

class $MessageRecordFieldNames {
  final String fieldName;
  final String prefix;

  $MessageRecordFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $MessageRecordFieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageMap = 'messageMap';
  String get messageMap => prefix + _messageMap;
  static const _messageList = 'messageList';
  $MessageFieldNames get messageList =>
      $MessageFieldNames.sub(prefix + _messageList);

  static const _messageSet = 'messageSet';
  $MessageFieldNames get messageSet =>
      $MessageFieldNames.sub(prefix + _messageSet);

  @override
  String toString() => fieldName;
}

class $MessageRecord2MapMapper extends MapMapper<MessageRecord2> {
  const $MessageRecord2MapMapper();
  static const $type = 'MessageRecord2';

  @override
  MessageRecord2 fromMap(Map<String, dynamic> map) {
    return MessageRecord2()
      ..messageMap = (map['messageMap'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, $MessageMapMapper().fromMap(v)))
      ..messageList = List<Message>.unmodifiable(
          map['messageList'].map((e) => const $MessageMapMapper().fromMap(e)))
      ..messageSet = Set<Message>.unmodifiable(List<Message>.from(
          map['messageSet'].map((e) => const $MessageMapMapper().fromMap(e))));
  }

  @override
  Map<String, dynamic> toMap(MessageRecord2 instance) {
    final map = <String, dynamic>{};

    map['messageMap'] = instance.messageMap
        .map((k, v) => MapEntry(k, $MessageMapMapper().toMap(v)));
    map['messageList'] = instance.messageList
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();
    map['messageSet'] = instance.messageSet
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();

    return map;
  }
}

extension $MessageRecord2MapExtension on MessageRecord2 {
  Map<String, dynamic> toMap() => const $MessageRecord2MapMapper().toMap(this);
  static MessageRecord2 fromMap(Map<String, dynamic> map) =>
      const $MessageRecord2MapMapper().fromMap(map);
}

extension $MapMessageRecord2Extension on Map<String, dynamic> {
  MessageRecord2 toMessageRecord2() =>
      const $MessageRecord2MapMapper().fromMap(this);
}

class $MessageRecord2FieldNames {
  final String fieldName;
  final String prefix;

  $MessageRecord2FieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $MessageRecord2FieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageMap = 'messageMap';
  String get messageMap => prefix + _messageMap;
  static const _messageList = 'messageList';
  $MessageFieldNames get messageList =>
      $MessageFieldNames.sub(prefix + _messageList);

  static const _messageSet = 'messageSet';
  $MessageFieldNames get messageSet =>
      $MessageFieldNames.sub(prefix + _messageSet);

  @override
  String toString() => fieldName;
}

class $MessageRecord3MapMapper extends MapMapper<MessageRecord3> {
  const $MessageRecord3MapMapper();
  static const $type = 'MessageRecord3';

  @override
  MessageRecord3 fromMap(Map<String, dynamic> map) {
    return MessageRecord3()
      ..messageMap.addAll((map['messageMap'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, $MessageMapMapper().fromMap(v))))
      ..messageList.addAll(List<Message>.unmodifiable(
          map['messageList'].map((e) => const $MessageMapMapper().fromMap(e))))
      ..messageSet.addAll(Set<Message>.unmodifiable(List<Message>.from(
          map['messageSet'].map((e) => const $MessageMapMapper().fromMap(e)))));
  }

  @override
  Map<String, dynamic> toMap(MessageRecord3 instance) {
    final map = <String, dynamic>{};

    map['messageMap'] = instance.messageMap
        .map((k, v) => MapEntry(k, $MessageMapMapper().toMap(v)));
    map['messageList'] = instance.messageList
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();
    map['messageSet'] = instance.messageSet
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();

    return map;
  }
}

extension $MessageRecord3MapExtension on MessageRecord3 {
  Map<String, dynamic> toMap() => const $MessageRecord3MapMapper().toMap(this);
  static MessageRecord3 fromMap(Map<String, dynamic> map) =>
      const $MessageRecord3MapMapper().fromMap(map);
}

extension $MapMessageRecord3Extension on Map<String, dynamic> {
  MessageRecord3 toMessageRecord3() =>
      const $MessageRecord3MapMapper().fromMap(this);
}

class $MessageRecord3FieldNames {
  final String fieldName;
  final String prefix;

  $MessageRecord3FieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $MessageRecord3FieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageMap = 'messageMap';
  String get messageMap => prefix + _messageMap;
  static const _messageList = 'messageList';
  $MessageFieldNames get messageList =>
      $MessageFieldNames.sub(prefix + _messageList);

  static const _messageSet = 'messageSet';
  $MessageFieldNames get messageSet =>
      $MessageFieldNames.sub(prefix + _messageSet);

  @override
  String toString() => fieldName;
}

class $MessageRecord4MapMapper extends MapMapper<MessageRecord4> {
  const $MessageRecord4MapMapper();
  static const $type = 'MessageRecord4';

  @override
  MessageRecord4 fromMap(Map<String, dynamic> map) {
    return MessageRecord4(
      (map['messageMap'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, $MessageMapMapper().fromMap(v))),
      List<Message>.unmodifiable(
          map['messageList'].map((e) => const $MessageMapMapper().fromMap(e))),
      Set<Message>.unmodifiable(List<Message>.from(
          map['messageSet'].map((e) => const $MessageMapMapper().fromMap(e)))),
    );
  }

  @override
  Map<String, dynamic> toMap(MessageRecord4 instance) {
    final map = <String, dynamic>{};

    map['messageMap'] = instance.messageMap
        .map((k, v) => MapEntry(k, $MessageMapMapper().toMap(v)));
    map['messageList'] = instance.messageList
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();
    map['messageSet'] = instance.messageSet
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();

    return map;
  }
}

extension $MessageRecord4MapExtension on MessageRecord4 {
  Map<String, dynamic> toMap() => const $MessageRecord4MapMapper().toMap(this);
  static MessageRecord4 fromMap(Map<String, dynamic> map) =>
      const $MessageRecord4MapMapper().fromMap(map);
}

extension $MapMessageRecord4Extension on Map<String, dynamic> {
  MessageRecord4 toMessageRecord4() =>
      const $MessageRecord4MapMapper().fromMap(this);
}

class $MessageRecord4FieldNames {
  final String fieldName;
  final String prefix;

  $MessageRecord4FieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $MessageRecord4FieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageMap = 'messageMap';
  String get messageMap => prefix + _messageMap;
  static const _messageList = 'messageList';
  $MessageFieldNames get messageList =>
      $MessageFieldNames.sub(prefix + _messageList);

  static const _messageSet = 'messageSet';
  $MessageFieldNames get messageSet =>
      $MessageFieldNames.sub(prefix + _messageSet);

  @override
  String toString() => fieldName;
}

class $MessageRecord5MapMapper extends MapMapper<MessageRecord5> {
  const $MessageRecord5MapMapper();
  static const $type = 'MessageRecord5';

  @override
  MessageRecord5 fromMap(Map<String, dynamic> map) {
    return MessageRecord5(
      messageMap: (map['messageMap'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, $MessageMapMapper().fromMap(v))),
      messageList: List<Message>.unmodifiable(
          map['messageList'].map((e) => const $MessageMapMapper().fromMap(e))),
      messageSet: Set<Message>.unmodifiable(List<Message>.from(
          map['messageSet'].map((e) => const $MessageMapMapper().fromMap(e)))),
    );
  }

  @override
  Map<String, dynamic> toMap(MessageRecord5 instance) {
    final map = <String, dynamic>{};

    map['messageMap'] = instance.messageMap
        .map((k, v) => MapEntry(k, $MessageMapMapper().toMap(v)));
    map['messageList'] = instance.messageList
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();
    map['messageSet'] = instance.messageSet
        .map((e) => const $MessageMapMapper().toMap(e))
        .toList();

    return map;
  }
}

extension $MessageRecord5MapExtension on MessageRecord5 {
  Map<String, dynamic> toMap() => const $MessageRecord5MapMapper().toMap(this);
  static MessageRecord5 fromMap(Map<String, dynamic> map) =>
      const $MessageRecord5MapMapper().fromMap(map);
}

extension $MapMessageRecord5Extension on Map<String, dynamic> {
  MessageRecord5 toMessageRecord5() =>
      const $MessageRecord5MapMapper().fromMap(this);
}

class $MessageRecord5FieldNames {
  final String fieldName;
  final String prefix;

  $MessageRecord5FieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $MessageRecord5FieldNames()
      : fieldName = '',
        prefix = '';

  static const _messageMap = 'messageMap';
  String get messageMap => prefix + _messageMap;
  static const _messageList = 'messageList';
  $MessageFieldNames get messageList =>
      $MessageFieldNames.sub(prefix + _messageList);

  static const _messageSet = 'messageSet';
  $MessageFieldNames get messageSet =>
      $MessageFieldNames.sub(prefix + _messageSet);

  @override
  String toString() => fieldName;
}

class $MessageStatusMapMapper {
  const $MessageStatusMapMapper();
  MessageStatus fromMap(dynamic e) => MessageStatus.values[e];
  dynamic toMap(MessageStatus e) => e.index;
}
