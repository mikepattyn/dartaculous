// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator_test_mongo/map_mapper_generator_test.dart';

part 'category.g.dart';

@mapMapped
class Category {
  final String id;

  @MapField(isKey: true)
  final String rev;

  @MapField(isKey: false)
  final String key;
  final String title;
  final String mainComponentId;
  final Component mainComponent;
  final Component? alternativeComponent;
  final List<Component> otherComponents;
  final List<Component>? secondaryComponents;

  Category({
    this.id = '',
    this.rev = '',
    this.key = '',
    required this.title,
    this.mainComponentId = '',
    required this.mainComponent,
    this.alternativeComponent,
    required this.otherComponents,
    this.secondaryComponents,
  });
}
