// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encapsulation.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $EncapsulatedFieldsClassMapMapper
    extends MapMapper<EncapsulatedFieldsClass> {
  const $EncapsulatedFieldsClassMapMapper();
  static const $type = 'EncapsulatedFieldsClass';

  @override
  EncapsulatedFieldsClass fromMap(Map<String, dynamic> map) {
    return EncapsulatedFieldsClass(
      finalString: map['finalString'] as String,
      encapsulatedString: map['encapsulatedString'] as String,
      encapsulatedCollection: Set<String>.unmodifiable(
          List<String>.from(map['encapsulatedCollection'])),
    );
  }

  @override
  Map<String, dynamic> toMap(EncapsulatedFieldsClass instance) {
    final map = <String, dynamic>{};

    map['finalString'] = instance.finalString;
    map['encapsulatedString'] = instance.encapsulatedString;
    map['encapsulatedCollection'] = instance.encapsulatedCollection.toList();

    return map;
  }
}

extension $EncapsulatedFieldsClassMapExtension on EncapsulatedFieldsClass {
  Map<String, dynamic> toMap() =>
      const $EncapsulatedFieldsClassMapMapper().toMap(this);
  static EncapsulatedFieldsClass fromMap(Map<String, dynamic> map) =>
      const $EncapsulatedFieldsClassMapMapper().fromMap(map);
}

extension $MapEncapsulatedFieldsClassExtension on Map<String, dynamic> {
  EncapsulatedFieldsClass toEncapsulatedFieldsClass() =>
      const $EncapsulatedFieldsClassMapMapper().fromMap(this);
}

class $EncapsulatedFieldsClassFieldNames {
  final String fieldName;
  final String prefix;

  $EncapsulatedFieldsClassFieldNames.sub(this.fieldName)
      : prefix = '$fieldName.';

  const $EncapsulatedFieldsClassFieldNames()
      : fieldName = '',
        prefix = '';

  static const _finalString = 'finalString';
  String get finalString => prefix + _finalString;
  static const _encapsulatedString = 'encapsulatedString';
  String get encapsulatedString => prefix + _encapsulatedString;
  static const _encapsulatedCollection = 'encapsulatedCollection';
  String get encapsulatedCollection => prefix + _encapsulatedCollection;

  @override
  String toString() => fieldName;
}
