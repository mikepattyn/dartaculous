// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $PersonMapMapper extends MapMapper<Person> {
  const $PersonMapMapper();

  @override
  Person fromMap(Map<String, dynamic> map) {
    final $kh = const MongoKeyHandler();
    final defaultsProvider = $PersonDefaultsProvider();

    return Person(
      key: getValueOrDefault($kh.fieldNameToMapKey('key'),
          () => defaultsProvider.key, (mapValue) => $kh.keyFromMap(map, 'key')),
      name: getValueOrDefault(map['name'], () => defaultsProvider.name,
          (mapValue) => mapValue as String),
    );
  }

  @override
  Map<String, dynamic> toMap(Person instance) {
    final $kh = const MongoKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.key, 'key');
    map['name'] = instance.name;

    return map;
  }
}

extension $PersonMapExtension on Person {
  Map<String, dynamic> toMap() => const $PersonMapMapper().toMap(this);
  static Person fromMap(Map<String, dynamic> map) =>
      const $PersonMapMapper().fromMap(map);
}

extension $MapPersonExtension on Map<String, dynamic> {
  Person toPerson() => const $PersonMapMapper().fromMap(this);
}

class $PersonFieldNames {
  final $kh = const MongoKeyHandler();
  final String fieldName;
  final String prefix;

  $PersonFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $PersonFieldNames()
      : fieldName = '',
        prefix = '';

  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);
  static const _name = 'name';
  String get name => prefix + _name;

  @override
  String toString() => fieldName;
}
