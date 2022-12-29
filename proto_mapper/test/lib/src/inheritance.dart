import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

part 'inheritance.g.dart';

abstract class Root {
  @ProtoField(2)
  late String name;
}

abstract class Trunk extends Root {}


@Proto(knownSubClasses: {Twig: 3})
class Branch extends Trunk {}


@Proto(knownSubClasses: {Leaf: 3})
class Twig extends Branch {}

@Proto()
class Leaf extends Twig {}
