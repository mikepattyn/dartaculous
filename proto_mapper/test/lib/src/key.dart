import 'package:proto_annotations/proto_annotations.dart';

part 'key.g.dart';

@Proto()
@mapProto
class Key {
  @ProtoField(2)
  final String key;
  const Key({
    required this.key,
  });
}
