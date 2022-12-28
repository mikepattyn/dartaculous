import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_mapper/map_proto_reflected.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

import 'package:built_value/built_value.dart' as b;

import 'field_code_generator.dart';
import 'field_descriptor.dart';

part 'proto_mapper_generator.helpers.dart';

class ProtoMapperGenerator extends GeneratorForAnnotation<MapProto> {
  final BuilderOptions options;
  final String _prefix;
  final TimePrecision _dateTimePrecision;
  final TimePrecision _durationPrecision;
  final bool _allowMissingFields;
  final bool _useWellKnownTypes;

  ProtoMapperGenerator(this.options)
      : _prefix = options.config['prefix'] as String? ?? 'G',
        _dateTimePrecision = _getTimePrecision(
            options.config['dateTimePrecision'] as String? ?? 'microseconds'),
        _durationPrecision = _getTimePrecision(
            options.config['durationPrecision'] as String? ?? 'microseconds'),
        _allowMissingFields =
            (options.config['allowMissingFields'] as bool? ?? false),
        _useWellKnownTypes =
            options.config['useWellKnownTypes'] as bool? ?? false;

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    return '// PROTO_MAPPER_PLACEHOLDER';
    // final builders = getBuilders(element as InterfaceElement, annotation);
    // final emitter =
    //     DartEmitter.scoped(useNullSafetySyntax: true, orderDirectives: true);
    // final code = builders.fold(
    //     '',
    //     (String previousValue, b.Builder builder) =>
    //         '$previousValue\n\n${(builder.build() as Spec).accept(emitter).toString()}');
    // return code;
  }

  /// Create [ClassBuilder], [MethodBuilder] and [ExtensionBuilder] instances
  /// required for the generator
  List<b.Builder> getBuilders(
      InterfaceElement interfaceElement, ConstantReader annotation) {
    List<b.Builder> builders = [];
    final mapProtoReflected = _hydrateAnnotation(
      annotation,
      prefix: _prefix,
      dateTimePrecision: _dateTimePrecision,
      durationPrecision: _durationPrecision,
      allowMissingFields: _allowMissingFields,
    );

    RenderMapperBuffers renderParams =
        _createRenderBuffers(interfaceElement, mapProtoReflected);
    builders.add(_mapperClassBuilder(interfaceElement, renderParams));
    if (interfaceElement is ClassElement) {
      builders.addAll(_extraMethods(interfaceElement, renderParams));
      builders.add(_classExtension(interfaceElement, renderParams));
    }
    builders.add(_protoClassExtension(interfaceElement, renderParams));
    return builders;
  }

  ClassBuilder _mapperClassBuilder(
      InterfaceElement classElement, RenderMapperBuffers renderParams) {
    final classBuilder = ClassBuilder()
      ..name = '\$${renderParams.className}ProtoMapper'
      ..implements.add(Reference(
          'ProtoMapper<${renderParams.className}, ${renderParams.protoClassName}>'));
    final constructor = ConstructorBuilder()..constant = true;
    classBuilder.constructors.add(constructor.build());

    // fromProto(proto)
    final fromProto = MethodBuilder()
      ..name = 'fromProto'
      ..returns = Reference(renderParams.className);
    var protoParam = ParameterBuilder()
      ..name = 'proto'
      ..type = Reference(renderParams.protoClassName);
    fromProto.requiredParameters.add(protoParam.build());
    if (classElement is EnumElement) {
      fromProto.body = Code('${renderParams.className}.values[proto.value]');
    } else {
      fromProto.body = Code('_\$${renderParams.className}FromProto(proto)');
    }
    fromProto.lambda = true;
    fromProto.annotations.add(const Reference('override'));
    classBuilder.methods.add(fromProto.build());

    // toProto(entity)
    final toProto = MethodBuilder()
      ..name = 'toProto'
      ..returns = Reference(renderParams.protoClassName);
    var entityParam = ParameterBuilder()
      ..name = 'entity'
      ..type = Reference(renderParams.className);
    toProto.requiredParameters.add(entityParam.build());
    if (classElement is EnumElement) {
      toProto.body =
          Code('${renderParams.protoClassName}.valueOf(entity.index)!');
    } else {
      toProto.body = Code('_\$${renderParams.className}ToProto(entity)');
    }
    toProto.lambda = true;
    toProto.annotations.add(const Reference('override'));
    classBuilder.methods.add(toProto.build());

    if (classElement is ClassElement) {
      // fromJson(json)
      final fromJson = MethodBuilder()
        ..name = 'fromJson'
        ..returns = Reference(renderParams.className);
      var stringParam = ParameterBuilder()
        ..name = 'json'
        ..type = Reference('String');
      fromJson.requiredParameters.add(stringParam.build());
      fromJson.body = Code(
          '_\$${renderParams.className}FromProto(${renderParams.protoClassName}.fromJson(json))');
      fromJson.lambda = true;
      classBuilder.methods.add(fromJson.build());

      // toJson(entity)
      final toJson = MethodBuilder()
        ..name = 'toJson'
        ..returns = Reference('String');
      toJson.requiredParameters.add(entityParam.build());
      toJson.body =
          Code('_\$${renderParams.className}ToProto(entity).writeToJson()');
      toJson.lambda = true;
      classBuilder.methods.add(toJson.build());

      // toBase64Proto(entity)
      final toBase64Proto = MethodBuilder()
        ..name = 'toBase64Proto'
        ..returns = Reference('String');
      toBase64Proto.requiredParameters.add(entityParam.build());
      toBase64Proto.body =
          Code('base64Encode(utf8.encode(toProto(entity).writeToJson()))');
      toBase64Proto.lambda = true;
      classBuilder.methods.add(toBase64Proto.build());

      // fromBase64Proto(base64Proto)
      final fromBase64Proto = MethodBuilder()
        ..name = 'fromBase64Proto'
        ..returns = Reference(renderParams.className);
      final base64Param = ParameterBuilder()
        ..name = 'base64Proto'
        ..type = Reference('String');
      fromBase64Proto.requiredParameters.add(base64Param.build());
      fromBase64Proto.body = Code(
          '_\$${renderParams.className}FromProto(${renderParams.protoClassName}.fromJson(utf8.decode(base64Decode(base64Proto))))');
      fromBase64Proto.lambda = true;
      classBuilder.methods.add(fromBase64Proto.build());
    }

    return classBuilder;
  }

  ExtensionBuilder _classExtension(
      ClassElement classElement, RenderMapperBuffers renderParams) {
    // $[CLASSNAME]ProtoExtension
    final classExtension = ExtensionBuilder()
      ..name = '\$${renderParams.className}ProtoExtension'
      ..on = Reference(renderParams.className);

    final toProto = MethodBuilder()
      ..name = 'toProto'
      ..returns = Reference(renderParams.protoClassName)
      ..lambda = true
      ..body = Code('_\$${renderParams.className}ToProto(this)');
    classExtension.methods.add(toProto.build());
    final toJson = MethodBuilder()
      ..name = 'toJson'
      ..returns = Reference('String')
      ..lambda = true
      ..body = Code('_\$${renderParams.className}ToProto(this).writeToJson()');
    classExtension.methods.add(toJson.build());
    final fromProto = MethodBuilder()
      ..name = 'fromProto'
      ..returns = Reference(renderParams.className)
      ..lambda = true
      ..static = true
      ..body = Code('_\$${renderParams.className}FromProto(proto)');
    final protoParam = ParameterBuilder()
      ..name = 'proto'
      ..type = Reference(renderParams.protoClassName);
    fromProto.requiredParameters.add(protoParam.build());
    classExtension.methods.add(fromProto.build());
    final fromJson = MethodBuilder()
      ..name = 'fromJson'
      ..returns = Reference(renderParams.className)
      ..lambda = true
      ..static = true
      ..body = Code(
          '_\$${renderParams.className}FromProto(${renderParams.protoClassName}.fromJson(json))');
    final jsonParam = ParameterBuilder()
      ..name = 'json'
      ..type = Reference('String');
    fromJson.requiredParameters.add(jsonParam.build());
    classExtension.methods.add(fromJson.build());

    return classExtension;
  }

  ExtensionBuilder _protoClassExtension(
      InterfaceElement classElement, RenderMapperBuffers renderParams) {
    // $[PROTOCLASSNAME]ProtoExtension
    final protoClassExtension = ExtensionBuilder()
      ..name = '\$${renderParams.protoClassName}ProtoExtension'
      ..on = Reference(renderParams.protoClassName);

    final toClass = MethodBuilder()
      ..name = 'to${renderParams.className}'
      ..returns = Reference(renderParams.className)
      ..lambda = true;
    final body = classElement is ClassElement
        ? '_\$${renderParams.className}FromProto(this)'
        : 'const \$${renderParams.className}ProtoMapper().fromProto(this)';
    toClass.body = Code(body);
    protoClassExtension.methods.add(toClass.build());
    return protoClassExtension;
  }

  List<MethodBuilder> _extraMethods(
      ClassElement classElement, RenderMapperBuffers renderParams) {
    List<MethodBuilder> methods = [];
    // _$[CLASSNAME]ToProto(instance)
    final instanceToProto = MethodBuilder()
      ..name = '_\$${renderParams.className}ToProto'
      ..returns = Reference(renderParams.protoClassName);
    final instanceParam = ParameterBuilder()
      ..name = 'instance'
      ..type = Reference(renderParams.className);
    instanceToProto.requiredParameters.add(instanceParam.build());
    final toVar = renderParams.toKnownSubclasses == null ? 'proto' : 'uproto';
    final toReturn = classElement.isAbstract
        ? 'throw UnimplementedError();'
        : '''
            ${renderParams.toKnownSubclasses == null ? '' : 'final proto = uproto.${renderParams.className.camelCase} = ${renderParams.protoFieldsOfClassName}();'}
            ${renderParams.toProtoFieldBuffer}
            return $toVar;
          ''';
    instanceToProto.body = Code('''
      ${((classElement.isAbstract) && (renderParams.toKnownSubclasses ?? '').isEmpty) ? '' : 'var $toVar = ${renderParams.protoClassName}();'}
      ${renderParams.toKnownSubclasses ?? ''}
      $toReturn
      ''');
    methods.add(instanceToProto);

    // _$[CLASSNAME]FromProto(sInstance)
    final instanceFromProto = MethodBuilder()
      ..name = '_\$${renderParams.className}FromProto'
      ..returns = Reference(renderParams.className);
    final protoInstanceParam = ParameterBuilder()
      ..type = Reference(renderParams.protoClassName);
    StringBuffer body = StringBuffer('${renderParams.fromKnownSubclasses}');
    if (renderParams.fromKnownSubclasses != null) {
      protoInstanceParam.name = 'sInstance';
      if (classElement.isAbstract) {
        body.write('throw UnimplementedError();');
      } else {
        body.write('''
            final instance = sInstance.${renderParams.className.camelCase};
            final ret = ${renderParams.className}${renderParams.constructorName}(${renderParams.constructorFieldBuffer})
            ${renderParams.fromProtoFieldBuffer};
            return ret;          
          ''');
      }
    } else {
      protoInstanceParam.name = 'instance';
      if (classElement.isAbstract) {
        body.clear();
        body.write('throw UnimplementedError();');
      } else {
        body.clear();
        body.write('''
          ${renderParams.className}${renderParams.constructorName}(${renderParams.constructorFieldBuffer})
          ${renderParams.fromProtoFieldBuffer};
        ''');
        instanceFromProto.lambda = true;
      }
    }
    instanceFromProto.body = Code(body.toString());
    instanceFromProto.requiredParameters.add(protoInstanceParam.build());
    methods.add(instanceFromProto);

    return methods;
  }

  RenderMapperBuffers _createRenderBuffers(
    InterfaceElement classElement,
    MapProtoReflected mapProtoReflected,
  ) {
    final mapProto = mapProtoReflected.mapProto;
    final fieldDescriptors =
        _getFieldDescriptors(classElement, mapProto, _prefix);
    final fromFieldDescriptors = [...fieldDescriptors];

    final toProtoFieldBuffer = StringBuffer();
    final fromProtoFieldBuffer = StringBuffer();
    final constructorFieldBuffer = StringBuffer();

    // let's get all the constructors which cover all non-nullable final fields
    final constructor =
        _getConstructor(classElement, fieldDescriptors, mapProto);

    // generate the mapping for the constructor, consuming all
    // the fields that are set by the constructor
    _buildConstructorBuffer(
        constructor, fromFieldDescriptors, constructorFieldBuffer);

    // assign the remaining from proto field assignments
    // (that where not set by the constructor)
    for (var fieldDescriptor
        in fromFieldDescriptors.where((fd) => !fd.isFinal)) {
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor,
        useWellKnownTypes: _useWellKnownTypes,
      );
      var fromProtoMap =
          '${fieldDescriptor.displayName} = ${fieldCodeGenerator.fromProtoMap}';
      fromProtoFieldBuffer.writeln('  ..$fromProtoMap');
    }

    // assign the to proto field assignments
    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor,
        useWellKnownTypes: _useWellKnownTypes,
      );
      toProtoFieldBuffer.writeln(fieldCodeGenerator.toProtoMap);
    }

    final constructorName =
        constructor.name.isNotEmpty ? ".${constructor.name}" : constructor.name;

    final toKnownSubClasses = _generateToKnownSubclasses(mapProtoReflected);
    final fromKnownSubClasses = _generateFromKnownSubclasses(mapProtoReflected);

    final prefix = mapProtoReflected.mapProto.prefix ?? _prefix;

    final renderParams = RenderMapperBuffers(
      className: classElement.name,
      protoClassName: '$prefix${classElement.name}',
      constructorName: constructorName,
      toProtoFieldBuffer: toProtoFieldBuffer.toString(),
      fromProtoFieldBuffer: fromProtoFieldBuffer.toString(),
      constructorFieldBuffer: constructorFieldBuffer.toString(),
      protoFieldsOfClassName: '${prefix}FieldsOf${classElement.name}',
      toKnownSubclasses: toKnownSubClasses,
      fromKnownSubclasses: fromKnownSubClasses,
    );
    return renderParams;
  }

  ConstructorElement _getConstructor(InterfaceElement classElement,
      Iterable<FieldDescriptor> fieldDescriptors, MapProto mapProto) {
    final missingFields = <String>{};
    final constructors = classElement.getConstructorsMatchingFields(
      fieldDescriptors: fieldDescriptors,
      allowMissingFields: mapProto.allowMissingFields,
      missingFields: missingFields,
    );
    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${classElement.name} because it is missing a constructor that covers all final properties.\n'
            '\tMissing fields: $missingFields')
        : constructors.first;
    return constructor;
  }

  void _buildConstructorBuffer(
      ConstructorElement constructor,
      List<FieldDescriptor> fromFieldDescriptors,
      StringBuffer constructorFieldBuffer) {
    for (var constructorParameter in constructor.parameters) {
      final fieldDescriptorList = fromFieldDescriptors
          .where((element) => element.name == constructorParameter.name);

      if (fieldDescriptorList.isEmpty) {
        // If not found, there's not much we can do...
        continue;
      }
      final fieldDescriptor = fieldDescriptorList.first;
      fromFieldDescriptors.remove(fieldDescriptor);

      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor,
        useWellKnownTypes: _useWellKnownTypes,
      );
      // INLINE
      final constructorMap = _getConstructorMap(
          constructorParameter, fieldDescriptor, fieldCodeGenerator);
      constructorFieldBuffer.writeln(constructorMap);
    }
  }

  String _getConstructorMap(ParameterElement constructorParameter,
      FieldDescriptor fieldDescriptor, FieldCodeGenerator fieldCodeGenerator) {
    final constructorMap =
        '${fieldDescriptor.displayName}: ${fieldCodeGenerator.fromProtoMap}, ';
    if (constructorParameter.isNamed) return constructorMap;
    return constructorMap.substring(constructorParameter.nameLength + 1);
  }

  String? _generateToKnownSubclasses(MapProtoReflected mapProtoReflected) {
    final kscs =
        getKnownSubclasses(mapProtoReflected.knownSubClasses, MapProto);
    if (kscs.isEmpty) return null;

    final ret = kscs.map((ksc) {
      final className = ksc.getDisplayString(withNullability: false);
      final camelClassName = className.camelCase;
      final expression = '''
      if (instance is $className) {
        uproto.$camelClassName = (const \$${className}ProtoMapper()).toProto(instance);
        return uproto;
      }
    ''';
      return expression;
    }).join('\n');
    return ret;
  }

  String? _generateFromKnownSubclasses(MapProtoReflected mapProtoReflected) {
    final kscs =
        getKnownSubclasses(mapProtoReflected.knownSubClasses, MapProto);
    if (kscs.isEmpty) return null;

    final ret = kscs.map((ksc) {
      final className = ksc.getDisplayString(withNullability: false);
      final camelClassName = className.camelCase;
      final expression = '''
      if (sInstance.has$className()) {
        return sInstance.$camelClassName.to$className();
      }
      ''';
      return expression;
    }).join('\n');
    return ret;
  }
}

class RenderMapperBuffers {
  final String className;
  final String protoClassName;
  final String constructorName;
  final String toProtoFieldBuffer;
  final String fromProtoFieldBuffer;
  final String constructorFieldBuffer;
  final String? toKnownSubclasses;
  final String? fromKnownSubclasses;
  final String protoFieldsOfClassName;

  RenderMapperBuffers({
    required this.constructorName,
    required this.toProtoFieldBuffer,
    required this.fromProtoFieldBuffer,
    required this.constructorFieldBuffer,
    required this.className,
    required this.protoClassName,
    required this.protoFieldsOfClassName,
    this.toKnownSubclasses,
    this.fromKnownSubclasses,
  });
}

TimePrecision _getTimePrecision(String value) {
  final values = TimePrecision.values.where((tp) => tp.name == value);
  if (values.isEmpty) {
    throw UnimplementedError();
  }
  return values.first;
}
