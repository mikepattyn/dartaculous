// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $AssetBuilder implements Builder<Asset> {
  final _defaultsProvider = $AssetDefaultsProvider();

  String? $description;
  String get description => $description ?? _defaultsProvider.description;
  set description(String value) => $description = value;

  Decimal? $value;
  Decimal get value => $value ?? _defaultsProvider.value;
  set value(Decimal value) => $value = value;

  $AssetBuilder({
    String? description,
    Decimal? value,
  }) {
    $description = description;
    $value = value;
  }

  $AssetBuilder.fromAsset(Asset entity)
      : this(
          description: entity.description,
          value: entity.value,
        );

  @override
  Asset build() {
    final entity = _build();
    const $AssetValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<Asset> tryBuild() {
    try {
      final entity = _build();
      final errors = $AssetValidator().validate(entity);
      final result =
          BuildResult<Asset>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<Asset>(exception: ex);
    }
  }

  Asset _build() {
    var entity = Asset(
      description: description,
      value: value,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $AssetCopyWithExtension on Asset {
  Asset copyWith({
    String? description,
    Decimal? value,
  }) {
    return Asset(
      description: description ?? this.description,
      value: value ?? this.value,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $AssetDefaultsProvider {
  const $AssetDefaultsProvider();

  Asset createWithDefaults({
    String? description,
    Decimal? value,
  }) {
    return Asset(
      description: description ?? this.description,
      value: value ?? this.value,
    );
  }

  String get description => '';
  Decimal get value => Decimal.zero;
}

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AssetMapMapper extends MapMapper<Asset> {
  const $AssetMapMapper();
  static const $type = 'Asset';

  @override
  Asset fromMap(Map<String, dynamic> map) {
    final defaultsProvider = $AssetDefaultsProvider();

    return Asset(
      description: getValueOrDefault(map['description'],
          () => defaultsProvider.description, (mapValue) => mapValue as String),
      value: getValueOrDefault(map['value'], () => defaultsProvider.value,
          (mapValue) => Decimal.parse(mapValue)),
    );
  }

  @override
  Map<String, dynamic> toMap(Asset instance) {
    final map = <String, dynamic>{};

    map['description'] = instance.description;
    map['value'] = instance.value.toString();

    return map;
  }
}

extension $AssetMapExtension on Asset {
  Map<String, dynamic> toMap() => const $AssetMapMapper().toMap(this);
  static Asset fromMap(Map<String, dynamic> map) =>
      const $AssetMapMapper().fromMap(map);
}

extension $MapAssetExtension on Map<String, dynamic> {
  Asset toAsset() => const $AssetMapMapper().fromMap(this);
}

class $AssetFieldNames {
  final String fieldName;
  final String prefix;

  $AssetFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $AssetFieldNames()
      : fieldName = '',
        prefix = '';

  static const _description = 'description';
  String get description => prefix + _description;
  static const _value = 'value';
  String get value => prefix + _value;

  @override
  String toString() => fieldName;
}

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AssetProtoMapper implements ProtoMapper<Asset, GAsset> {
  const $AssetProtoMapper();

  @override
  Asset fromProto(GAsset proto) => _$AssetFromProto(proto);

  @override
  GAsset toProto(Asset entity) => _$AssetToProto(entity);

  Asset fromJson(String json) => _$AssetFromProto(GAsset.fromJson(json));
  String toJson(Asset entity) => _$AssetToProto(entity).writeToJson();

  String toBase64Proto(Asset entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Asset fromBase64Proto(String base64Proto) =>
      GAsset.fromJson(utf8.decode(base64Decode(base64Proto))).toAsset();
}

GAsset _$AssetToProto(Asset instance) {
  var proto = GAsset();

  proto.description = instance.description;
  proto.value = instance.value.toString();

  return proto;
}

Asset _$AssetFromProto(GAsset instance) => Asset(
      description: instance.description,
      value: Decimal.parse(instance.value),
    );

extension $AssetProtoExtension on Asset {
  GAsset toProto() => _$AssetToProto(this);
  String toJson() => _$AssetToProto(this).writeToJson();

  static Asset fromProto(GAsset proto) => _$AssetFromProto(proto);
  static Asset fromJson(String json) => _$AssetFromProto(GAsset.fromJson(json));
}

extension $GAssetProtoExtension on GAsset {
  Asset toAsset() => _$AssetFromProto(this);
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $AssetValidator implements Validator {
  const $AssetValidator();

  ValidationError? validateDescription(String value, {Asset? entity}) {
    return null;
  }

  ValidationError? validateValue(Decimal value, {Asset? entity}) {
    return null;
  }

  ValidationError? $validateDescription(String? value, {Asset? entity}) {
    if (value == null) {
      return RequiredValidationError('description');
    }
    return validateDescription(value, entity: entity);
  }

  ValidationError? $validateValue(Decimal? value, {Asset? entity}) {
    if (value == null) {
      return RequiredValidationError('value');
    }
    return validateValue(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Asset entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateDescription(entity.description, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    if ((error = validateValue(entity.value, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant Asset entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
