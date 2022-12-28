import 'package:proto_annotations/proto_annotations.dart';
import 'package:decimal/decimal.dart';
import 'component.dart';

part 'ingredient.g.dart';

@Proto()
@mapProto
class Ingredient {
  @ProtoField(2)
  final String description;
  @ProtoField(3)
  final Decimal quantity;
  @ProtoField(4)
  final double precision;
  @ProtoField(5)
  final Duration cookingDuration;

  @ProtoField(6)
  final Component mainComponent;
  @ProtoField(7)
  final List<Component> otherComponents;
  @ProtoField(8)
  final Component? alternativeComponent;
  @ProtoField(9)
  final List<Component>? secondaryComponents;

  Ingredient({
    required this.description,
    required this.quantity,
    required this.precision,
    required this.cookingDuration,
    required this.mainComponent,
    required this.otherComponents,
    this.alternativeComponent,
    this.secondaryComponents,
  });
}
