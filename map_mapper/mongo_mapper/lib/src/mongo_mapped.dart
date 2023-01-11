import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:mongo_mapper/mongo_mapper.dart';

class MongoMapped implements MapMapped {
  @override
  final DateTimeRepresentation? dateTimeRepresentation;
  @override
  final TimePrecision? durationPrecision;
  @override
  final bool includeFieldsByDefault;
  @override
  final List<Type>? knownSubClasses;
  @override
  final bool mapEnumToString;
  @override
  final bool useDefaultsProvider;
  @override
  final Type keyHandlerType;

  const MongoMapped({
    this.includeFieldsByDefault = true,
    this.useDefaultsProvider = false,
    this.durationPrecision,
    this.mapEnumToString = false,
    this.knownSubClasses,
  })  : keyHandlerType = MongoKeyHandler,
        dateTimeRepresentation = DateTimeRepresentation.dateTime;
}

const mongo = MongoMapped();
