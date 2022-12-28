import 'package:proto_annotations/proto_annotations.dart';

part 'recipe_type.g.dart';

@Proto()
@mapProto
enum RecipeTypes {
  cook,
  grill,
  fry,
  stew,
}
