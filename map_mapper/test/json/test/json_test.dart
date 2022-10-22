import 'dart:convert';

import 'package:map_mapper_generator_json_test/src/events.dart';
import 'package:test/test.dart';

void main() {

  group('Map<?,?> field tests', () {
    final msg = Event(
        messageId: "messageId",
        timestamp: DateTime.now(),
        aggregateId: AggregateId.of("id", "type"),
        payloadType: "payloadType",
        payload: "payload",
        status: MessageStatus.notProcessed);

    test('toMap() should be "json encodable"', () {
      final record = MessageRecord()
        ..messageMap = {'test': msg}
        ..messageList = [msg]
        ..messageSet = {msg};
      record.messageList = [msg];
      final map = record.toMap();
      final jsonMap = json.encode(map);
      expect(jsonMap, isNotEmpty);
      expect(jsonMap, contains(r'{"messageMap":{"test":{"$type":"Event","messageId":"messageId","aggregateId":{"id":"id","type":"type"},"timestamp"'));
    });

    test('fromMap() should be able to process json string decoded maps', () {
      final jsonMap = jsonDecode(r'{"messageMap":{"test":{"$type":"Event","messageId":"messageId","aggregateId":{"id":"id","type":"type"},"timestamp":1666207107800489,"payloadType":"payloadType","payload":"payload","status":"notProcessed"}},"messageList":[{"$type":"Event","messageId":"messageId","aggregateId":{"id":"id","type":"type"},"timestamp":1666207107800489,"payloadType":"payloadType","payload":"payload","status":"notProcessed"}],"messageSet":[{"$type":"Event","messageId":"messageId","aggregateId":{"id":"id","type":"type"},"timestamp":1666207107800489,"payloadType":"payloadType","payload":"payload","status":"notProcessed"}]}');
      final record = $MessageRecordMapMapper().fromMap(jsonMap);
      expect(record.messageMap, contains('test'));
      expect(record.messageMap['test']!.aggregateId!.id, equals("id"));
      expect(record.messageMap['test']!.payloadType, equals('payloadType'));
      expect(record.messageMap['test']!.payload, equals('payload'));
    });

  });

  group('Iterable field tests', () {
    final msg = Event(
        messageId: "messageId",
        timestamp: DateTime.now(),
        aggregateId: AggregateId.of("id", "type"),
        payloadType: "payloadType",
        payload: "payload",
        status: MessageStatus.notProcessed);

    test('late fields', () {
      final record = MessageRecord()
          ..messageMap = {'test': msg}
          ..messageList = [msg]
          ..messageSet = {msg};
      final serialized = jsonEncode(record.toMap());
      final deserialized = $MessageRecordMapMapper().fromMap(jsonDecode(serialized));
      expect(record.messageMap.keys, equals(deserialized.messageMap.keys));
      _compareMessages(record.messageMap['test']!, deserialized.messageMap['test']!);
      _compareMessages(record.messageList.first, deserialized.messageList.first);
      _compareMessages(record.messageSet.first, deserialized.messageSet.first);
    });

    test('late final fields', () {
      final record = MessageRecord2()
        ..messageMap = {'test': msg}
        ..messageList = [msg]
        ..messageSet = {msg};
      final serialized = jsonEncode(record.toMap());
      final deserialized = $MessageRecord2MapMapper().fromMap(jsonDecode(serialized));
      expect(record.messageMap.keys, equals(deserialized.messageMap.keys));
      _compareMessages(record.messageMap['test']!, deserialized.messageMap['test']!);
      _compareMessages(record.messageList.first, deserialized.messageList.first);
      _compareMessages(record.messageSet.first, deserialized.messageSet.first);
    });

    test('pre-initialized final fields', () {
      final record = MessageRecord3();
      record.messageMap.addAll({'test': msg});
      record.messageList.addAll([msg]);
      record.messageSet.addAll({msg});
      final serialized = jsonEncode(record.toMap());
      final deserialized = $MessageRecord3MapMapper().fromMap(jsonDecode(serialized));
      expect(record.messageMap.keys, equals(deserialized.messageMap.keys));
      _compareMessages(record.messageMap['test']!, deserialized.messageMap['test']!);
      _compareMessages(record.messageList.first, deserialized.messageList.first);
      _compareMessages(record.messageSet.first, deserialized.messageSet.first);
    });

    test('final fields in constructor', () {
      final record = MessageRecord4({'test': msg}, [msg], {msg});
      final serialized = jsonEncode(record.toMap());
      final deserialized = $MessageRecord4MapMapper().fromMap(jsonDecode(serialized));
      expect(record.messageMap.keys, equals(deserialized.messageMap.keys));
      _compareMessages(record.messageMap['test']!, deserialized.messageMap['test']!);
      _compareMessages(record.messageList.first, deserialized.messageList.first);
      _compareMessages(record.messageSet.first, deserialized.messageSet.first);
    });

    test('final fields in constructor with named args', () {
      final record = MessageRecord5(messageMap: {'test': msg}, messageList: [msg], messageSet: {msg});
      final serialized = jsonEncode(record.toMap());
      final deserialized = $MessageRecord5MapMapper().fromMap(jsonDecode(serialized));
      expect(record.messageMap.keys, equals(deserialized.messageMap.keys));
      _compareMessages(record.messageMap['test']!, deserialized.messageMap['test']!);
      _compareMessages(record.messageList.first, deserialized.messageList.first);
      _compareMessages(record.messageSet.first, deserialized.messageSet.first);
    });

  });
}

void _compareMessages(Message original, Message deserialized) {
  expect(deserialized.aggregateId?.id, equals(original.aggregateId?.id));
  expect(deserialized.aggregateId?.type, equals(original.aggregateId?.type));
  expect(deserialized.payloadType, equals(original.payloadType));
  expect(deserialized.payload, equals(original.payload));
  expect(deserialized.messageId, equals(original.messageId));
  expect(deserialized.status, equals(original.status));
}

