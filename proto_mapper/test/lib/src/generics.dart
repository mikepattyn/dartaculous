import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/generics.pb.dart';

part 'generics.g.dart';

const knownSubClasses = {ContestConstraint: 3};

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: knownSubClasses)
abstract class ScheduleConstraint<T> {
  /// Check whether or not the relevant instance violates the constraint
  /// Returns a list of validation messages when invalid.
  Set<String> validate(T instance);
}

@Proto.auto()
@mapProto
class ConstraintAdded {
  late String contestScheduleId;
  late ScheduleConstraint constraint;
}

@Proto.auto()
@mapProto
class ContestConstraint extends ScheduleConstraint<Contest> {
  @override
  Set<String> validate(Contest instance) {
    return {};
  }
}

class Contest {}
