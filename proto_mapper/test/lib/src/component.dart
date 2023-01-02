import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

part 'component.g.dart';

@Proto()
class Component {
  @ProtoField(2)
  final String description;

  Component({
    required this.description,
  });
}
