import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'abstract_missing_subclass.g.dart';

/// When working on a project but you haven't yet defined all subclasses,
/// make sure that the generated code throws the Unimplemented exception,
/// instead of creating a compilation error...
@MapMapped()
abstract class AbstractParentClass1 {
}

@MapMapped(knownSubClasses: [SubClass1])
abstract class AbstractParentClass2 {
}

@MapMapped()
class SubClass1 extends AbstractParentClass2 {
}
