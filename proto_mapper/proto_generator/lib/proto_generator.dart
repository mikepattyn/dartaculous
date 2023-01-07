/// Support for doing something awesome.
///
/// More dartdocs go here.
library proto_generator;

import 'package:build/build.dart';
import 'package:proto_annotations/config.dart';
import 'package:proto_generator/proto_generator.dart';
import 'package:proto_generator/src/proto_builder.dart';
import 'package:proto_generator/src/proto_from_cache.dart';
import 'package:source_gen/source_gen.dart';

export 'src/proto_mapper/proto_mapper_generator.dart';

Builder protoBuilder(BuilderOptions options) => ProtoBuilder(options);

Builder protoMapperBuilder(BuilderOptions options) => SharedPartBuilder(
    [ProtoMapperGenerator(Config.fromJson(options.config))], 'proto_map');

Builder protoFromCache(BuilderOptions options) => ProtoFromCache();
