import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/inheritance.pb.dart';

part 'inheritance.g.dart';


abstract class Root {
  late String name;
}

abstract class Trunk extends Root {

}

@Proto(prefix: 'T', knownSubClasses: [Twig])
@MapProto(prefix: 'T', knownSubClasses: [Twig])
class Branch extends Trunk {

}

@Proto(prefix: 'L', knownSubClasses: [Leaf])
@MapProto(prefix: 'L', knownSubClasses: [Leaf])
class Twig extends Branch {

}

@Proto(prefix: 'T')
@MapProto(prefix: 'T')
class Leaf extends Twig {

}

