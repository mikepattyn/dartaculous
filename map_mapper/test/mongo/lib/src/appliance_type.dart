import 'package:mongo_mapper/mongo_mapper.dart';

part 'appliance_type.g.dart';

@mongo
enum ApplianceType {
  Heat,
  Cold,
  Cutlery,
}
