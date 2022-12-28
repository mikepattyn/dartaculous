import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pbenum.dart';

part 'recipe_type.g.dart';

@Proto()
enum RecipeTypes {
  cook,
  grill,
  fry,
  stew,
}
