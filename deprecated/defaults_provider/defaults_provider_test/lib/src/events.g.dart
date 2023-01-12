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

class $MessageDefaultsProvider {
  const $MessageDefaultsProvider();

  String get messageId => '';
  DateTime get timestamp => throw UnimplementedError();
  String get payloadType => '';
  dynamic get payload => throw UnimplementedError();
  MessageStatus get status => throw UnimplementedError();
}

class $CommandDefaultsProvider {
  const $CommandDefaultsProvider();

  static const _superDefaultsProvider = $MessageDefaultsProvider();

  Command createWithDefaults({
    String? messageId,
    DateTime? timestamp,
    String? payloadType,
    dynamic payload,
    MessageStatus? status,
  }) {
    return Command(
      messageId: messageId ?? this.messageId,
      aggregateId: null,
      timestamp: timestamp ?? this.timestamp,
      payloadType: payloadType ?? this.payloadType,
      payload: payload ?? this.payload,
      status: status ?? this.status,
      userId: null,
    );
  }

  String get messageId => _superDefaultsProvider.messageId;
  DateTime get timestamp => _superDefaultsProvider.timestamp;
  String get payloadType => _superDefaultsProvider.payloadType;
  dynamic get payload => _superDefaultsProvider.payload;
  MessageStatus get status => _superDefaultsProvider.status;
}

class $EventDefaultsProvider {
  const $EventDefaultsProvider();

  static const _superDefaultsProvider = $MessageDefaultsProvider();

  Event createWithDefaults({
    String? messageId,
    DateTime? timestamp,
    String? payloadType,
    dynamic payload,
    MessageStatus? status,
  }) {
    return Event(
      messageId: messageId ?? this.messageId,
      timestamp: timestamp ?? this.timestamp,
      userId: null,
      aggregateId: null,
      payloadType: payloadType ?? this.payloadType,
      payload: payload ?? this.payload,
      status: status ?? this.status,
    );
  }

  String get messageId => _superDefaultsProvider.messageId;
  DateTime get timestamp => _superDefaultsProvider.timestamp;
  String get payloadType => _superDefaultsProvider.payloadType;
  dynamic get payload => _superDefaultsProvider.payload;
  MessageStatus get status => _superDefaultsProvider.status;
}

class $IntegrationEventDefaultsProvider {
  const $IntegrationEventDefaultsProvider();

  static const _superDefaultsProvider = $EventDefaultsProvider();

  IntegrationEvent createWithDefaults({
    String? messageId,
    DateTime? timestamp,
    String? payloadType,
    dynamic payload,
    MessageStatus? status,
  }) {
    return IntegrationEvent(
      messageId: messageId ?? this.messageId,
      timestamp: timestamp ?? this.timestamp,
      processId: null,
      payloadType: payloadType ?? this.payloadType,
      payload: payload ?? this.payload,
      status: status ?? this.status,
    );
  }

  String get messageId => _superDefaultsProvider.messageId;
  DateTime get timestamp => _superDefaultsProvider.timestamp;
  String get payloadType => _superDefaultsProvider.payloadType;
  dynamic get payload => _superDefaultsProvider.payload;
  MessageStatus get status => _superDefaultsProvider.status;
}

class $StandAlonePayloadConsumerDefaultsProvider {
  const $StandAlonePayloadConsumerDefaultsProvider();

  StandAlonePayloadConsumer createWithDefaults({
    String? messageId,
    Payload? payload,
  }) {
    return StandAlonePayloadConsumer(
      messageId ?? this.messageId,
      payload ?? this.payload,
    );
  }

  String get messageId => '';
  Payload get payload => throw UnimplementedError();
}

class $StandAloneMessageConsumerDefaultsProvider {
  const $StandAloneMessageConsumerDefaultsProvider();

  StandAloneMessageConsumer createWithDefaults({
    String? messageId,
    Message? message,
  }) {
    return StandAloneMessageConsumer(
      messageId ?? this.messageId,
      message ?? this.message,
    );
  }

  String get messageId => '';
  Message get message => throw UnimplementedError();
}

class $PayloadDefaultsProvider {
  const $PayloadDefaultsProvider();
}

class $ConcretePayloadDefaultsProvider {
  const $ConcretePayloadDefaultsProvider();

  ConcretePayload createWithDefaults({
    String? value,
  }) {
    return ConcretePayload();
  }

  String get value => '';
}

class $ParentWithoutFieldsDefaultsProvider {
  const $ParentWithoutFieldsDefaultsProvider();
}

class $ChildOfParentWithoutFieldsDefaultsProvider {
  const $ChildOfParentWithoutFieldsDefaultsProvider();

  ChildOfParentWithoutFields createWithDefaults({
    String? one,
  }) {
    return ChildOfParentWithoutFields();
  }

  String get one => '';
}
