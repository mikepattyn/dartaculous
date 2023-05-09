// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $CategoryMapMapper extends MapMapper<Category> {
  const $CategoryMapMapper();
  static const $type = 'Category';

  @override
  Category fromMap(Map<String, dynamic> map) {
    return Category(
      title: map['title'] as String,
      mainComponent: const $ComponentMapMapper().fromMap(map['mainComponent']),
      otherComponents: List<Component>.unmodifiable(map['otherComponents']
          .map((e) => const $ComponentMapMapper().fromMap(e))),
      alternativeComponent: (map['alternativeComponent'] != null
          ? const $ComponentMapMapper().fromMap(map['alternativeComponent'])
          : null),
      secondaryComponents: map['secondaryComponents'] == null
          ? null
          : List<Component>.unmodifiable(map['secondaryComponents']
              .map((e) => const $ComponentMapMapper().fromMap(e))),
      id: map['id'] as String,
      mainComponentId: map['mainComponentId'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Category instance) {
    final map = <String, dynamic>{};

    map['id'] = instance.id;
    map['title'] = instance.title;
    map['mainComponentId'] = instance.mainComponentId;
    map['mainComponent'] =
        const $ComponentMapMapper().toMap(instance.mainComponent);
    map['alternativeComponent'] = (instance.alternativeComponent == null
        ? null
        : const $ComponentMapMapper().toMap(instance.alternativeComponent!));
    map['otherComponents'] = instance.otherComponents
        .map((e) => const $ComponentMapMapper().toMap(e))
        .toList();
    map['secondaryComponents'] = instance.secondaryComponents == null
        ? null
        : instance.secondaryComponents!
            .map((e) => const $ComponentMapMapper().toMap(e))
            .toList();

    return map;
  }
}

extension $CategoryMapExtension on Category {
  Map<String, dynamic> toMap() => const $CategoryMapMapper().toMap(this);
  static Category fromMap(Map<String, dynamic> map) =>
      const $CategoryMapMapper().fromMap(map);
}

extension $MapCategoryExtension on Map<String, dynamic> {
  Category toCategory() => const $CategoryMapMapper().fromMap(this);
}

class $CategoryFieldNames {
  final String fieldName;
  final String prefix;

  $CategoryFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $CategoryFieldNames()
      : fieldName = '',
        prefix = '';

  static const _id = 'id';
  String get id => prefix + _id;
  static const _title = 'title';
  String get title => prefix + _title;
  static const _mainComponentId = 'mainComponentId';
  String get mainComponentId => prefix + _mainComponentId;
  static const _mainComponent = 'mainComponent';
  $ComponentFieldNames get mainComponent =>
      $ComponentFieldNames.sub(prefix + _mainComponent);
  static const _alternativeComponent = 'alternativeComponent';
  $ComponentFieldNames get alternativeComponent =>
      $ComponentFieldNames.sub(prefix + _alternativeComponent);
  static const _otherComponents = 'otherComponents';
  $ComponentFieldNames get otherComponents =>
      $ComponentFieldNames.sub(prefix + _otherComponents);

  static const _secondaryComponents = 'secondaryComponents';
  $ComponentFieldNames get secondaryComponents =>
      $ComponentFieldNames.sub(prefix + _secondaryComponents);

  @override
  String toString() => fieldName;
}
