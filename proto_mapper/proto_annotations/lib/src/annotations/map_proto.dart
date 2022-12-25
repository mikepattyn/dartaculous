import 'package:proto_annotations/src/annotations.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

class MapProto {
  const MapProto({
    this.prefix,
    this.packageName = '',
    this.includeFieldsByDefault = true,
    this.dateTimePrecision,
    this.durationPrecision,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.knownSubClasses = const [],
    this.allowMissingFields = false,
  });

  final String? packageName;
  final String? prefix;
  final bool includeFieldsByDefault;
  final TimePrecision? dateTimePrecision;
  final TimePrecision? durationPrecision;
  final int superFieldsNumber;
  final int ownFieldsNumber;
  final List<Type> knownSubClasses;
  final bool allowMissingFields;
}

const mapProto = MapProto();
