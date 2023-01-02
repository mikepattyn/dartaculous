// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

part 'person.g.dart';

@Proto()
class Person {
  @ProtoField(1)
  final bool? boolValue;

  @ProtoField(2)
  final Decimal? decVal;

  Person({
    this.boolValue,
    this.decVal,
  });
}

void main() {
  // final dec = Decimal.parse('-10.3');
  // final r = dec.toRational();
  // print('${r.numerator} / ${r.denominator} / ${r.signum}');
  // gp.recipe = GRecipe();
  // final json = gp.writeToJson();
  // final buffer = gp.writeToBuffer();
  // print('${gp.hasRecipe()} - $json - $buffer');
}
