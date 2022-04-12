import 'mongo_key_handler.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'entity.dart';

part 'person.g.dart';

@MapMapped(useDefaultsProvider: true)
class Person extends Entity {
  final String name;
  Person({
    required String key,
    required this.name,
  }) : super(key: key);
}

class $PersonDefaultsProvider {
  String get key => '';
  String get name => '';
}
