import 'package:decimal/decimal.dart';
import 'package:map_mapper_generator_test_mongo/map_mapper_generator_test.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:test/test.dart';

void main() {
  group('keyhandler tests', () {
    test('mongo key handler', () {
      final recipe = _scrambledEggsRecipe();
      final mongoMap = recipe.toMap();

      final mrecipe = mongoMap.toRecipe();

      expect(mrecipe.key, recipe.key);
      expect(mrecipe.categoryKey, recipe.categoryKey);
      expect(mrecipe.category.id, recipe.category.id);
      expect(mrecipe.category.mainComponentId, recipe.category.mainComponentId);
      expect(mrecipe.ingredients.first.key, recipe.ingredients.first.key);
      expect(mrecipe.ingredients.first.mainComponentKey,
          recipe.ingredients.first.mainComponentKey);

      expect(mongoMap['_id'], ObjectId.fromHexString(recipe.key));
      expect(
          mongoMap['categoryId'], ObjectId.fromHexString(recipe.categoryKey));
      expect(mongoMap['category']['_id'],
          ObjectId.fromHexString(recipe.category.id));
      expect(mongoMap['category']['mainComponentId'],
          ObjectId.fromHexString(recipe.category.mainComponentId));

      expect(mongoMap['ingredients'][0]['_id'],
          ObjectId.fromHexString(recipe.ingredients.first.key));
      expect(mongoMap['ingredients'][0]['mainComponentId'],
          ObjectId.fromHexString(recipe.ingredients.first.mainComponentKey));
    });

    test('mongo key handler for entity', () {
      final key = ObjectId.fromSeconds(5653324265).toHexString();
      final person = Person(key: key, name: 'Alice');
      final mongoMap = person.toMap();

      final mperson = mongoMap.toPerson();

      expect(mperson.key, person.key);
      expect(mongoMap['_id'], ObjectId.fromHexString(person.key));
    });
  });
}

Category _eggsCategory({
  Component? alternativeComponent,
  List<Component>? secondaryComponents,
}) =>
    Category(
      id: ObjectId.fromSeconds(4343433).toHexString(),
      mainComponentId: ObjectId.fromSeconds(87633323).toHexString(),
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
      key: ObjectId.fromSeconds(5653323465).toHexString(),
      categoryKey: ObjectId.fromSeconds(576653323).toHexString(),
      secondaryCategoryKey: ObjectId.fromSeconds(5653323465).toHexString(),
      publishDate: DateTime(2021, 02, 05, 13, 15, 12),
      expiryDate: expiryDate,
      ingredients: [
        Ingredient(
          key: ObjectId.fromSeconds(73323465).toHexString(),
          description: '',
          quantity: Decimal.fromInt(0),
          precision: 1202.067843212219876,
          cookingDuration: Duration(),
          mainComponentKey: ObjectId.fromSeconds(656434).toHexString(),
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
