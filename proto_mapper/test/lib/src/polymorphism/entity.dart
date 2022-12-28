import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/entity.pb.dart';

part 'entity.g.dart';

@Proto()
@mapProto
class Entity {
  final String key;

  Entity({
    required this.key,
  });
}
