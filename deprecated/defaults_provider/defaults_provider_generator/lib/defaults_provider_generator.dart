library proto_mapper;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/defaults_provider_generator.dart';

export 'src/defaults_provider_generator.dart';

Builder defaultsProviderGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([DefaultsProviderGenerator()], 'defaults_provider');
