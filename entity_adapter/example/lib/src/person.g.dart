// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// AdaptedEntityGenerator
// **************************************************************************

class $PersonPermissions extends EntityPermissions {
  const $PersonPermissions();

  @override
  String get create => 'create_person';

  @override
  String get delete => 'delete_person';

  @override
  String get read => 'read_person';

  @override
  String get update => 'update_person';
}

class $PersonEntityAdapter implements EntityAdapter<Person> {
  @override
  final MapMapper<Person> mapMapper = const $PersonMapMapper();

  @override
  final Validator validator = const $PersonValidator();

  @override
  final EntityPermissions permissions = const $PersonPermissions();
}

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $PersonBuilder implements Builder<Person> {
  final _defaultsProvider = $PersonDefaultsProvider();

  List<$AssetBuilder> assets;
  String? $name;
  String get name => $name ?? _defaultsProvider.name;
  set name(String value) => $name = value;

  $PersonBuilder({
    List<$AssetBuilder>? assets,
    String? name,
  }) : assets = assets ?? [] {
    $name = name;
  }

  $PersonBuilder.fromPerson(Person entity)
      : this(
          assets: entity.assets.map((e) => $AssetBuilder.fromAsset(e)).toList(),
          name: entity.name,
        );

  @override
  Person build() {
    final entity = _build();
    const $PersonValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<Person> tryBuild() {
    try {
      final entity = _build();
      final errors = $PersonValidator().validate(entity);
      final result =
          BuildResult<Person>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<Person>(exception: ex);
    }
  }

  Person _build() {
    var entity = Person(
      assets: List.unmodifiable(assets.map((e) => e.build())),
      name: name,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $PersonCopyWithExtension on Person {
  Person copyWith({
    List<Asset>? assets,
    String? name,
  }) {
    return Person(
      assets: assets ?? this.assets,
      name: name ?? this.name,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $PersonDefaultsProvider {
  const $PersonDefaultsProvider();

  Person createWithDefaults({
    List<Asset>? assets,
    String? name,
  }) {
    return Person(
      assets: assets ?? this.assets,
      name: name ?? this.name,
    );
  }

  List<Asset> get assets => const [];
  String get name => '';
}

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $PersonMapMapper extends MapMapper<Person> {
  const $PersonMapMapper();

  @override
  Person fromMap(Map<String, dynamic> map) {
    final defaultsProvider = $PersonDefaultsProvider();

    return Person(
      assets: getValueOrDefault(
          map['assets'],
          () => defaultsProvider.assets,
          (mapValue) => List<Asset>.unmodifiable(
              mapValue.map((e) => const $AssetMapMapper().fromMap(e)))),
      name: getValueOrDefault(map['name'], () => defaultsProvider.name,
          (mapValue) => mapValue as String),
    );
  }

  @override
  Map<String, dynamic> toMap(Person instance) {
    final map = <String, dynamic>{};

    map['assets'] =
        instance.assets.map((e) => const $AssetMapMapper().toMap(e)).toList();
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
  final String fieldName;
  final String prefix;

  $PersonFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $PersonFieldNames()
      : fieldName = '',
        prefix = '';

  static const _assets = 'assets';
  $AssetFieldNames get assets => $AssetFieldNames.sub(prefix + _assets);

  static const _name = 'name';
  String get name => prefix + _name;

  @override
  String toString() => fieldName;
}

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $PersonProtoMapper implements ProtoMapper<Person, GPerson> {
  const $PersonProtoMapper();

  @override
  Person fromProto(GPerson proto) => _$PersonFromProto(proto);

  @override
  GPerson toProto(Person entity) => _$PersonToProto(entity);

  Person fromJson(String json) => _$PersonFromProto(GPerson.fromJson(json));
  String toJson(Person entity) => _$PersonToProto(entity).writeToJson();

  String toBase64Proto(Person entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Person fromBase64Proto(String base64Proto) =>
      GPerson.fromJson(utf8.decode(base64Decode(base64Proto))).toPerson();
}

GPerson _$PersonToProto(Person instance) {
  var proto = GPerson();

  proto.assets
      .addAll(instance.assets.map((e) => const $AssetProtoMapper().toProto(e)));

  proto.name = instance.name;

  return proto;
}

Person _$PersonFromProto(GPerson instance) => Person(
      assets: List<Asset>.unmodifiable(
          instance.assets.map((e) => const $AssetProtoMapper().fromProto(e))),
      name: instance.name,
    );

extension $PersonProtoExtension on Person {
  GPerson toProto() => _$PersonToProto(this);
  String toJson() => _$PersonToProto(this).writeToJson();

  static Person fromProto(GPerson proto) => _$PersonFromProto(proto);
  static Person fromJson(String json) =>
      _$PersonFromProto(GPerson.fromJson(json));
}

extension $GPersonProtoExtension on GPerson {
  Person toPerson() => _$PersonFromProto(this);
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $PersonValidator implements Validator {
  const $PersonValidator();

  ValidationError? validateAssets(List<Asset> value, {Person? entity}) {
    var errorLists = value
        .map((entity) {
          var errors = $AssetValidator().validate(entity);
          var itemErrors = ListItemErrorList(value, entity, errors);
          return itemErrors;
        })
        .where((p) => p.errorList.validationErrors.isNotEmpty)
        .toList();

    if (errorLists.isNotEmpty) {
      return ListPropertyValidation('assets', errorLists);
    }

    return null;
  }

  ValidationError? validateName(String value, {Person? entity}) {
    return null;
  }

  ValidationError? $validateAssets(List<Asset>? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('assets');
    }
    return validateAssets(value, entity: entity);
  }

  ValidationError? $validateName(String? value, {Person? entity}) {
    if (value == null) {
      return RequiredValidationError('name');
    }
    return validateName(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Person entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateAssets(entity.assets, entity: entity)) != null) {
      errors.add(error!);
    }

    if ((error = validateName(entity.name, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant Person entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
