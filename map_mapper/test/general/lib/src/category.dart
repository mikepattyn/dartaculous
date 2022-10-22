import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'component.dart';

part 'category.g.dart';

@mapMapped
class Category {
  final String id;
  final String title;
  final String mainComponentId;
  final Component mainComponent;
  final Component? alternativeComponent;
  final List<Component> otherComponents;
  final List<Component>? secondaryComponents;

  Category({
    required this.title,
    required this.mainComponent,
    required this.otherComponents,
    this.alternativeComponent,
    this.secondaryComponents,
    this.id = '',
    this.mainComponentId = '',
  });
}
