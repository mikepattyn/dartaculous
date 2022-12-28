import 'package:proto_annotations/proto_annotations.dart';

part 'abstract_missing_subclass.g.dart';

/// When working on a project but you haven't yet defined all subclasses,
/// make sure that the generated code throws the Unimplemented exception,
/// instead of creating a compilation error...
@MapProto()
@Proto()
abstract class AbstractParentClass1 {}

const knownSubClasses = {SubClass1: 3};

@MapProto(knownSubClasses: [SubClass1])
@Proto(knownSubClasses: knownSubClasses)
abstract class AbstractParentClass2 {}

@MapProto()
@Proto()
class SubClass1 extends AbstractParentClass2 {}
