import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:map_mapper_generator_test/map_mapper_generator_test.dart';
import 'package:map_mapper_generator_test/src/events.dart';
import 'package:test/test.dart';

void main() {
  group('basic test', () {
    test('category roundtrip', () {
      var category = Category(
        title: 'eggs',
        mainComponent: Component(description: ''),
        otherComponents: [],
      );

      var pcategory = category.toMap();
      var category2 = pcategory.toCategory();

      expect(category2.title, 'eggs');
    });

    test('publish date', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.publishDate, recipe.publishDate);
    });

    test('null expiry date', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.expiryDate, recipe.expiryDate);
    });

    test('non-null expiry date', () {
      final recipe =
          _scrambledEggsRecipe(expiryDate: DateTime(2020, 02, 28, 22, 15, 20));

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.expiryDate, recipe.expiryDate);
    });

    test('ingredient.duration property', () {
      var ingredient = Ingredient(
        description: '',
        quantity: Decimal.fromInt(0),
        precision: 0.0,
        cookingDuration: Duration(
            days: 5602, hours: 21, minutes: 44, seconds: 22, milliseconds: 12),
        mainComponent: Component(description: ''),
        otherComponents: [],
      );

      var pIngredient = ingredient.toMap();
      var ingredient2 = pIngredient.toIngredient();

      expect(ingredient2.cookingDuration, ingredient.cookingDuration);
    });

    test('preparation duration', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.preparationDuration, recipe.preparationDuration);
    });

    test('null total duration', () {
      final recipe = _scrambledEggsRecipe(totalDuration: null);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.totalDuration, recipe.totalDuration);
    });

    test('non-null total duration', () {
      final recipe =
          _scrambledEggsRecipe(totalDuration: Duration(hours: 1, minutes: 5));

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.totalDuration, recipe.totalDuration);
    });

    test('isPublished', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.isPublished, recipe.isPublished);
    });

    test('null requiresRobot', () {
      final recipe = _scrambledEggsRecipe(requiresRobot: null);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.requiresRobot, recipe.requiresRobot);
    });

    test('not-null requiresRobot', () {
      final recipe = _scrambledEggsRecipe(requiresRobot: false);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.requiresRobot, recipe.requiresRobot);
    });

    test('precision', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(
        recipe2.ingredients.first.precision,
        recipe.ingredients.first.precision,
      );
    });

    test('mainComponent', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(
        recipe2.ingredients.first.mainComponent.description,
        recipe.ingredients.first.mainComponent.description,
      );
      expect(
        recipe2.category.mainComponent.description,
        recipe.category.mainComponent.description,
      );
    });

    test('null components', () {
      final recipe = _scrambledEggsRecipe(
        alternativeComponent: null,
        secondaryComponents: null,
        categoryAlternativeComponent: null,
        categorySecondaryComponents: null,
      );

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.ingredients.first.alternativeComponent, null);
      expect(recipe2.ingredients.first.secondaryComponents, null);
      expect(recipe2.category.alternativeComponent, null);
      expect(recipe2.category.secondaryComponents, null);
    });

    test('applianceType', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.mainApplianceType, recipe.mainApplianceType);
    });

    test('null secondaryApplianceType', () {
      final recipe = _scrambledEggsRecipe(secondaryApplianceType: null);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.secondaryApplianceType, null);
    });

    test('null secondaryApplianceType', () {
      final recipe =
          _scrambledEggsRecipe(secondaryApplianceType: ApplianceType.Cold);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.secondaryApplianceType, ApplianceType.Cold);
    });

    test('tags', () {
      final recipe = _scrambledEggsRecipe();

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.tags.length, recipe.tags.length);
      expect(recipe2.tags.last, recipe.tags.last);
    });

    test('null extraTags', () {
      final recipe = _scrambledEggsRecipe(extraTags: null);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.extraTags, null);
    });

    test('not null tags', () {
      final recipe = _scrambledEggsRecipe(extraTags: [
        'extraTag1',
        'extraTag2',
      ]);

      final map = recipe.toMap();
      final recipe2 = map.toRecipe();

      expect(recipe2.extraTags!.length, recipe2.extraTags!.length);
      expect(recipe2.extraTags!.last, recipe2.extraTags!.last);
    });
  });

  group('keyhandler tests', () {
    test('default key handler', () {
      final recipe = _scrambledEggsRecipe();
      final map = recipe.toMap();

      final drecipe = map.toRecipe();

      expect(drecipe.key, recipe.key);
      expect(drecipe.categoryKey, recipe.categoryKey);
      expect(drecipe.category.id, recipe.category.id);
      expect(drecipe.category.mainComponentId, recipe.category.mainComponentId);
      expect(drecipe.ingredients.first.key, recipe.ingredients.first.key);
      expect(drecipe.ingredients.first.mainComponentKey,
          recipe.ingredients.first.mainComponentKey);

      expect(map['_key'], recipe.key);
      expect(map['categoryKey'], recipe.categoryKey);
      expect(map['category']['id'], recipe.category.id);
      expect(
          map['category']['mainComponentId'], recipe.category.mainComponentId);

      expect(map['ingredients'][0]['_key'], recipe.ingredients.first.key);
      expect(map['ingredients'][0]['mainComponentKey'],
          recipe.ingredients.first.mainComponentKey);
    });
  });

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
  expect(deserialized.timestamp, equals(original.timestamp));
  expect(deserialized.status, equals(original.status));
}

Category _eggsCategory({
  Component? alternativeComponent,
  List<Component>? secondaryComponents,
}) =>
    Category(
      id: '4343433',
      mainComponentId: '87633323',
      title: 'eggs',
      mainComponent: Component(
        description: 'category component',
      ),
      otherComponents: [
        Component(description: 'other category component 1'),
        Component(description: 'other category component 2'),
      ],
      alternativeComponent: alternativeComponent,
      secondaryComponents: secondaryComponents,
    );

Recipe _scrambledEggsRecipe({
  DateTime? expiryDate = null,
  Duration? totalDuration = null,
  bool? requiresRobot = null,
  Component? alternativeComponent,
  List<Component>? secondaryComponents,
  Component? categoryAlternativeComponent,
  List<Component>? categorySecondaryComponents,
  ApplianceType? secondaryApplianceType,
  List<String>? extraTags,
}) =>
    Recipe(
      category: _eggsCategory(
        alternativeComponent: categoryAlternativeComponent,
        secondaryComponents: categorySecondaryComponents,
      ),
      key: '5653323465',
      categoryKey: '576653323',
      secondaryCategoryKey: '5653323465',
      publishDate: DateTime(2021, 02, 05, 13, 15, 12),
      expiryDate: expiryDate,
      ingredients: [
        Ingredient(
          key: '73323465',
          description: '',
          quantity: Decimal.fromInt(0),
          precision: 1202.067843212219876,
          cookingDuration: Duration(),
          mainComponentKey: '656434',
          mainComponent: Component(
            description: 'ingredient component',
          ),
          otherComponents: [
            Component(description: 'other ingredient component 1'),
            Component(description: 'other ingredient component 2'),
          ],
          alternativeComponent: alternativeComponent,
          secondaryComponents: secondaryComponents,
        ),
      ],
      title: 'Scrambled eggs',
      preparationDuration: Duration(minutes: 23, seconds: 30),
      totalDuration: totalDuration,
      isPublished: true,
      requiresRobot: requiresRobot,
      mainApplianceType: ApplianceType.Cutlery,
      secondaryApplianceType: secondaryApplianceType,
      tags: ['tag1', 'tag2'],
      extraTags: extraTags,
    );
