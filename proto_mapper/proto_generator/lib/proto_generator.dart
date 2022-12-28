/// Support for doing something awesome.
///
/// More dartdocs go here.
library proto_generator;

import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/proto_generator.dart';
// import 'package:proto_generator/src/proto/proto_generator.dart';
import 'package:proto_generator/src/proto_builder.dart';
import 'package:proto_generator/src/proto_from_cache.dart';
import 'package:source_gen/source_gen.dart';
// import 'package:proto_generator/src/proto_mapper/proto_mapper_generator.dart';
// import 'package:proto_generator/src/proto_services/proto_services_generator.dart';
// import 'package:proto_generator/src/proto_services_mapper/proto_services_client_generator.dart';
// import 'package:proto_generator/src/proto_services_mapper/proto_services_service_generator.dart';
// import 'package:source_gen/source_gen.dart';

export 'src/proto_mapper/proto_mapper_generator.dart';

Builder protoBuilder(BuilderOptions options) => ProtoBuilder(options);

Builder protoMapperBuilder(BuilderOptions options) => SharedPartBuilder(
    [ProtoMapperGenerator(Config.fromJson(options.config))], 'proto_map');

Builder protoFromCache(BuilderOptions options) => ProtoFromCache();

// Builder protoBuilder(BuilderOptions options) =>
//     LibraryBuilder(ProtoGenerator(options),
//         generatedExtension: '.proto', formatOutput: (code) => code);

// Builder protoServicesBuilder(BuilderOptions options) =>
//     LibraryBuilder(ProtoServicesGenerator(options),
//         generatedExtension: '.services.proto', formatOutput: (code) => code);

// Builder protoServicesServiceBuilder(BuilderOptions options) =>
//     SharedPartBuilder(
//         [ProtoServicesServiceGenerator(options)], 'proto_services');

// Builder protoServicesClientBuilder(BuilderOptions options) => SharedPartBuilder(
//     [ProtoServicesClientGenerator(options)], 'proto_services_client');
