library entity_mapper;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/adapted_entity_generator.dart';

Builder adaptedEntityBuilder(BuilderOptions options) =>
    SharedPartBuilder([AdaptedEntityGenerator(options)], 'adapted_entity');
