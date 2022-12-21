import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/appliance_type.pbenum.dart';
import 'package:proto_generator_test/grpc/utensils.pb.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:proto_generator_test/grpc/google/protobuf/duration.pb.dart'
    as $wellknown_duration;
import 'package:proto_generator_test/grpc/google/protobuf/timestamp.pb.dart'
    as $wellknown_timestamp;

import 'appliance_type.dart';
import 'recipe.dart';

part 'utensils.g.dart';

@Proto(useProtoFieldNamingConventions: true)
@mapProto
enum KnifeType {
  chefsKnife,
  paringKnife,
  breadKnife,
}

@Proto.auto()
@mapProto
enum ChefType {
  seniorChef,
  sousChef,
  pastryChef,
  fishChef,
}

@Proto.auto()
@mapProto
class Knife {
  final String name;
  final KnifeType type;

  Knife({required this.name, required this.type});
}

@Proto.auto()
@mapProto
class GarlicPress {
  final String name;
  final bool machineWashable;

  GarlicPress({required this.name, required this.machineWashable});
}

@Proto(useProtoFieldNamingConventions: false)
@MapProto(dateTimePrecision: TimePrecision.milliseconds)
class Kitchen {
  final List<Recipe> recipeList;
  final Map<String, Recipe> recipeMap;
  final DateTime nextInspectionDate;

  const Kitchen({
    required this.recipeList,
    required this.recipeMap,
    required this.nextInspectionDate,
  });
}

@Proto(useProtoFieldNamingConventions: true)
@MapProto(
  dateTimePrecision: TimePrecision.microseconds,
  durationPrecision: TimePrecision.milliseconds,
)
class Chef {
  final Recipe? favoriteRecipe;
  final Knife? favoriteKnife;
  final ApplianceType favoriteApplianceType;
  final List<String> favoriteWords;
  final DateTime birthdate;
  final Duration? shelfLife;

  Chef({
    this.favoriteRecipe,
    required this.favoriteKnife,
    required this.favoriteApplianceType,
    this.favoriteWords = const [],
    required this.birthdate,
    this.shelfLife,
  });
}

/// SousChef is not allowed to handle a knife, so default to null.
/// In order for this to work, we'll have to ignore missing nullable fields
/// when looking for the FieldDescriptors of an entity,
/// and rely on the fact that the constructor will properly
/// set the required parameters(s).
@Proto.auto()
@mapProto
class SousChef extends Chef {
  SousChef(
      {required ApplianceType favoriteApplianceType,
      required DateTime birthdate,
      List<String> favoriteWords = const []})
      : super(
            favoriteKnife: null,
            favoriteApplianceType: favoriteApplianceType,
            favoriteWords: favoriteWords,
            birthdate: birthdate);
}

/// KnifeMaster is required to have a favorite knife.
/// To narrow down the requirement, we have to override the optional field
/// defined in the parent class.
/// We also know his favorite words, so no need to put them in the constructor.
/// This requires addition of the "allowMissingFields" annotation property.
@Proto.auto()
@MapProto(
    allowMissingFields: true, dateTimePrecision: TimePrecision.milliseconds)
class KnifeMaster extends Chef {
  @override
  // ignore: overridden_fields
  Knife favoriteKnife;

  KnifeMaster(
      {required this.favoriteKnife,
      required ApplianceType favoriteApplianceType,
      required DateTime birthdate})
      : super(
            favoriteKnife: favoriteKnife,
            favoriteApplianceType: favoriteApplianceType,
            favoriteWords: ['Yes', 'Sir'],
            birthdate: birthdate);
}

@Proto.auto()
@MapProto(durationPrecision: TimePrecision.microseconds)
class Inventory {
  final Map<String, int> numberOfThings;
  final Map<String, Recipe> recipesByName;
  final Duration? timeSpan;

  const Inventory({
    required this.numberOfThings,
    required this.recipesByName,
    this.timeSpan,
  });
}

@Proto.auto()
@MapProto()
class PrecisionSubject {
  final DateTime dateProperty;
  final Duration durationProperty;

  const PrecisionSubject({
    required this.dateProperty,
    required this.durationProperty,
  });
}
