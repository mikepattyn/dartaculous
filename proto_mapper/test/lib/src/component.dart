import 'package:proto_annotations/proto_annotations.dart';

part 'component.g.dart';

@Proto()
@mapProto
class Component {
  @ProtoField(2)
  final String description;

  Component({
    required this.description,
  });
}
