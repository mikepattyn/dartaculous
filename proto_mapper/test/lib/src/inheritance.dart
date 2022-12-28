import 'package:proto_annotations/proto_annotations.dart';

part 'inheritance.g.dart';

abstract class Root {
  @ProtoField(2)
  late String name;
}

abstract class Trunk extends Root {}

const twigAsSubclass = {Twig: 3};

@Proto(knownSubClasses: twigAsSubclass)
@MapProto(prefix: 'T', knownSubClasses: [Twig])
class Branch extends Trunk {}

const leafAsSubclass = {Leaf: 3};

@Proto(knownSubClasses: leafAsSubclass)
@MapProto(prefix: 'L', knownSubClasses: [Twig])
class Twig extends Branch {}

@Proto()
@MapProto(prefix: 'T')
class Leaf extends Twig {}
