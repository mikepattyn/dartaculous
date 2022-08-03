// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_missing_subclass.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AbstractParentClass1MapMapper extends MapMapper<AbstractParentClass1> {
  const $AbstractParentClass1MapMapper();
  static const $type = 'AbstractParentClass1';

  @override
  AbstractParentClass1 fromMap(Map<String, dynamic> map) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap(AbstractParentClass1 instance) {
    final map = <String, dynamic>{};

    return map;
  }
}

extension $AbstractParentClass1MapExtension on AbstractParentClass1 {
  Map<String, dynamic> toMap() =>
      const $AbstractParentClass1MapMapper().toMap(this);
  static AbstractParentClass1 fromMap(Map<String, dynamic> map) =>
      const $AbstractParentClass1MapMapper().fromMap(map);
}

extension $MapAbstractParentClass1Extension on Map<String, dynamic> {
  AbstractParentClass1 toAbstractParentClass1() =>
      const $AbstractParentClass1MapMapper().fromMap(this);
}

class $AbstractParentClass1FieldNames {
  final String fieldName;
  final String prefix;

  $AbstractParentClass1FieldNames.sub(this.fieldName)
      : prefix = fieldName + '.';

  const $AbstractParentClass1FieldNames()
      : fieldName = '',
        prefix = '';

  @override
  String toString() => fieldName;
}

class $AbstractParentClass2MapMapper extends MapMapper<AbstractParentClass2> {
  const $AbstractParentClass2MapMapper();
  static const $type = 'AbstractParentClass2';

  @override
  AbstractParentClass2 fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case $type:
        throw UnimplementedError();
      case $SubClass1MapMapper.$type:
        return (const $SubClass1MapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(AbstractParentClass2 instance) {
    if (instance is SubClass1) {
      return {
        '\$type': $SubClass1MapMapper.$type,
        ...const $SubClass1MapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'AbstractParentClass2';

    return map;
  }
}

extension $AbstractParentClass2MapExtension on AbstractParentClass2 {
  Map<String, dynamic> toMap() =>
      const $AbstractParentClass2MapMapper().toMap(this);
  static AbstractParentClass2 fromMap(Map<String, dynamic> map) =>
      const $AbstractParentClass2MapMapper().fromMap(map);
}

extension $MapAbstractParentClass2Extension on Map<String, dynamic> {
  AbstractParentClass2 toAbstractParentClass2() =>
      const $AbstractParentClass2MapMapper().fromMap(this);
}

class $AbstractParentClass2FieldNames {
  final String fieldName;
  final String prefix;

  $AbstractParentClass2FieldNames.sub(this.fieldName)
      : prefix = fieldName + '.';

  const $AbstractParentClass2FieldNames()
      : fieldName = '',
        prefix = '';

  @override
  String toString() => fieldName;
}

class $SubClass1MapMapper extends MapMapper<SubClass1> {
  const $SubClass1MapMapper();
  static const $type = 'SubClass1';

  @override
  SubClass1 fromMap(Map<String, dynamic> map) {
    return SubClass1();
  }

  @override
  Map<String, dynamic> toMap(SubClass1 instance) {
    final map = <String, dynamic>{};

    return map;
  }
}

extension $SubClass1MapExtension on SubClass1 {
  Map<String, dynamic> toMap() => const $SubClass1MapMapper().toMap(this);
  static SubClass1 fromMap(Map<String, dynamic> map) =>
      const $SubClass1MapMapper().fromMap(map);
}

extension $MapSubClass1Extension on Map<String, dynamic> {
  SubClass1 toSubClass1() => const $SubClass1MapMapper().fromMap(this);
}

class $SubClass1FieldNames {
  final String fieldName;
  final String prefix;

  $SubClass1FieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $SubClass1FieldNames()
      : fieldName = '',
        prefix = '';

  @override
  String toString() => fieldName;
}
