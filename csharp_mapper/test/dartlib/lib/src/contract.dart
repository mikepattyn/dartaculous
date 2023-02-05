import 'package:csharp_annotations/csharp_annotations.dart';

@csharp
class Contract {
  final DateTime startDate;
  final Duration duration;
  final List<String> clauses;

  const Contract({
    required this.startDate,
    required this.duration,
    required this.clauses,
  });
}
