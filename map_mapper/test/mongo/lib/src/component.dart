import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:mongo_mapper/mongo_mapper.dart';

part 'component.g.dart';

@mongo
class Component {
  final String description;

  Component({
    required this.description,
  });
}
