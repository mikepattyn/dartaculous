import 'package:proto_annotations/proto_annotations.dart';

part 'entity.g.dart';

@Proto()
@mapProto
class Entity {
  @ProtoField(2)
  final String key;

  Entity({
    required this.key,
  });
}
