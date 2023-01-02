/// Contains annotations and mappers to allow the mapping between PODOs and
/// [Map<String, dynamic>] maps used to interact with MongoDb via
/// mongo_dart package.

library map_mapper_annotations;

export 'src/annotations/map_field.dart';
export 'src/annotations/map_ignore.dart';
export 'src/annotations/map_mapped.dart';
export 'src/default_key_handler.dart';
export 'src/key_handler.dart';
export 'src/map_mapper.dart';
