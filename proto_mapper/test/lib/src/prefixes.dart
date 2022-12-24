import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/prefixes.pb.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

part 'prefixes.g.dart';

@Proto(prefix: 'A')
@MapProto(prefix: 'A')
enum FoodCategory {
  vegetables,
  meat,
  other,
}

const knownSubClasses = {Chef: 3, Waiter: 4, Manager: 5};

@Proto(prefix: 'B', knownSubClasses: knownSubClasses)
@MapProto(prefix: 'B', knownSubClasses: knownSubClasses)
abstract class Staff {
  late String name;
  late FoodCategory favoriteFood;
}

@Proto(prefix: 'C')
@MapProto(prefix: 'C')
class Chef extends Staff {
  late Manager manager;
}

/// Should use the default "G" prefix
@Proto.auto()
@mapProto
class Waiter extends Staff {
  late Manager manager;
  late List<Table> table;
}

@Proto(prefix: 'M')
@MapProto(prefix: 'M')
class Manager extends Staff {}

@Proto(prefix: 'T')
@MapProto(prefix: 'T')
class Table {
  late int number;
}

@Proto(prefix: 'R')
@MapProto(prefix: 'R')
class Restaurant {
  late List<Waiter> waiters;
  late List<Chef> chefs;
}

@WrapperAnnotation(prefix: 'W')
class Customer {
  late Restaurant favoriteRestaurant;
  late Chef favoriteChef;
}

class WrapperAnnotation implements Proto, MapProto {
  const WrapperAnnotation({
    this.allowMissingFields = true,
    this.dateTimePrecision,
    this.durationPrecision,
    this.includeFieldsByDefault = true,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.knownSubClasses = noSubClass,
    this.packageName = '',
    this.prefix,
    this.useProtoFieldNamingConventions,
  });

  @override
  final bool allowMissingFields;

  @override
  final TimePrecision? dateTimePrecision;

  @override
  final TimePrecision? durationPrecision;

  @override
  final bool includeFieldsByDefault;

  @override
  final int superFieldsNumber;

  @override
  final int ownFieldsNumber;

  @override
  final KnownSubClasses knownSubClasses;

  @override
  final String packageName;

  @override
  final String? prefix;

  @override
  final bool? useProtoFieldNamingConventions;
}
