import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

part 'inheritance.g.dart';

abstract class Root {
  @ProtoField(2)
  late String name;
}

abstract class Trunk extends Root {}

const twigAsSubclass = {Twig: 3};

@Proto(knownSubClasses: twigAsSubclass)
class Branch extends Trunk {}

const leafAsSubclass = {Leaf: 3};

@Proto(knownSubClasses: leafAsSubclass)
class Twig extends Branch {}

@Proto()
class Leaf extends Twig {}
