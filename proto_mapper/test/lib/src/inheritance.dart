import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/inheritance.pb.dart';

part 'inheritance.g.dart';

abstract class Root {
  late String name;
}

abstract class Trunk extends Root {}

const twigAsSubclass = {Twig: 3};

@Proto(prefix: 'T', knownSubClasses: twigAsSubclass)
@MapProto(prefix: 'T', knownSubClasses: twigAsSubclass)
class Branch extends Trunk {}

const leafAsSubclass = {Leaf: 3};

@Proto(prefix: 'L', knownSubClasses: leafAsSubclass)
@MapProto(prefix: 'L', knownSubClasses: leafAsSubclass)
class Twig extends Branch {}

@Proto(prefix: 'T')
@MapProto(prefix: 'T')
class Leaf extends Twig {}
