import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

part 'entity.g.dart';

@Proto()
class Entity {
  @ProtoField(2)
  final String key;

  Entity({
    required this.key,
  });
}
