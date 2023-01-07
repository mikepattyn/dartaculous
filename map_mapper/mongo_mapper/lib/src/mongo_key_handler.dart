import 'package:bson/bson.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

class MongoKeyHandler extends KeyHandler {
  const MongoKeyHandler();

  @override
  String keyFromMap(Map<String, dynamic> map, [String fieldName = '']) {
    final mapKey = fieldNameToMapKey(fieldName);
    if (map[mapKey] is ObjectId) {
      final ret = (map[mapKey] as ObjectId).toHexString();
      return ret;
    }
    return map[mapKey] ?? '';
  }

  @override
  void keyToMap(
    Map<String, dynamic> map,
    String value, [
    String fieldName = '',
  ]) {
    final mapKey = fieldNameToMapKey(fieldName);

    if (value.isEmpty) {
      map.remove(mapKey);
    } else {
      map[mapKey] = ObjectId.fromHexString(value);
    }
  }

  @override
  String fieldNameToMapKey(String fieldName) {
    switch (fieldName) {
      case '':
      case 'id':
      case 'key':
        return '_id';
      default:
        final ret = fieldName.endsWith('Key')
            ? '${fieldName.substring(0, fieldName.length - 3)}Id'
            : fieldName;
        return ret;
    }
  }
}
