import 'dart:io';

import 'package:test/test.dart';

/// Test to make sure that the `MapProto.prefix` is consistently used within the generated `.proto` files
void main() {
  late String contents;

  setUp(() {
    File proto = File('proto/prefixes.proto');
    contents = proto.readAsStringSync();
  });

  group('prefix', () {
    test('oneof props', () {
      expect(contents, contains('oneof props'));
      expect(contents, contains('CChef chef = 1;'));
      expect(contents, isNot(contains('BChef chef = 1;')));
      expect(contents, isNot(contains('GChef chef = 1;')));
      expect(contents, contains('GWaiter waiter = 2;'));
      expect(contents, isNot(contains('BWaiter waiter = 2;')));
      expect(contents, isNot(contains('CWaiter waiter = 2;')));
      expect(contents, contains('MManager manager = 3;'));
      expect(contents, isNot(contains('BManager manager = 3;')));
      expect(contents, isNot(contains('CManager manager = 3;')));
      expect(contents, isNot(contains('GManager manager = 3;')));
    });

    test('message ListOf', () {
      expect(contents, contains('message BListOfStaff'));
      expect(contents, contains('message CListOfChef'));
      expect(contents, contains('message GListOfWaiter'));
      expect(contents, contains('message MListOfManager'));
      expect(contents, contains('message TListOfTable'));
    });

    test('message fields', () {
      expect(contents, contains('message GWaiter'));
      expect(contents, contains('AFoodCategory favorite_food = 2;'));
      expect(contents, contains('MManager manager = 3;'));
      expect(contents, contains('repeated TTable table = 4;'));
    });

    test('message definition', () {
      expect(contents, contains('message BStaff'));
      expect(contents, contains('message CChef'));
      expect(contents, contains('message GWaiter'));
      expect(contents, contains('message MManager'));
      expect(contents, contains('message TTable'));
    });

    test('repeated fields', () {
      expect(contents, contains('repeated TTable table = 4;'));
    });

    test('enum definition', () {
      expect(contents, contains('enum AFoodCategory'));
    });

    test('default prefix when not specified', () {
      expect(contents, contains('message GWaiter'));
    });

    test('nullable enum', () {
      expect(contents, contains('message AFoodCategory_Message'));
    });
  });
}
