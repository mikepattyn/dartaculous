import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'entity.g.dart';

@mapMapped
class Entity {
  final String key;
  Entity({
    required this.key,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Entity && other.key == key;
  }

  @override
  int get hashCode => key.hashCode;
}
