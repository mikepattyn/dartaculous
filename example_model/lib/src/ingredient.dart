import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'grpc/ingredient.pb.dart';

part 'ingredient.g.dart';

@proto // generate .proto message based on this .dart file
// generate mapping code between the protoc generated code and this class.
@mapMapped
class Ingredient {
  final String description;
  final double quantity;

  const Ingredient({
    required this.description,
    required this.quantity,
  });
}
