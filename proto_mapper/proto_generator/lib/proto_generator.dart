/// Support for doing something awesome.
///
/// More dartdocs go here.
library proto_generator;

import 'package:build/build.dart';
// import 'package:proto_generator/src/proto/proto_generator.dart';
import 'package:proto_generator/src/proto/proto_builder.dart';
// import 'package:proto_generator/src/proto_mapper/proto_mapper_generator.dart';
// import 'package:proto_generator/src/proto_services/proto_services_generator.dart';
// import 'package:proto_generator/src/proto_services_mapper/proto_services_client_generator.dart';
// import 'package:proto_generator/src/proto_services_mapper/proto_services_service_generator.dart';
// import 'package:source_gen/source_gen.dart';

export 'src/proto_mapper/proto_mapper_generator.dart';

Builder protoBuilder2(BuilderOptions options) => ProtoBuilder(options);

// Builder protoMapperBuilder(BuilderOptions options) =>
//     SharedPartBuilder([ProtoMapperGenerator(options)], 'proto_map');

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
