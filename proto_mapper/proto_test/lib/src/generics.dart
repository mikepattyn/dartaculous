import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/generics.pb.dart';

part 'generics.g.dart';

@Proto(knownSubClasses: [ContestConstraint])
@MapProto(knownSubClasses: [ContestConstraint])
abstract class ScheduleConstraint<T> {

  /// Check whether or not the relevant instance violates the constraint
  /// Returns a list of validation messages when invalid.
  Set<String> validate(T instance);
}

@proto
@mapProto
class ConstraintAdded {
  late String contestScheduleId;
  late ScheduleConstraint constraint;
}

@proto
@mapProto
class ContestConstraint extends ScheduleConstraint<Contest> {

  @override
  Set<String> validate(Contest instance) {
    return {};
  }
}

class Contest {

}
