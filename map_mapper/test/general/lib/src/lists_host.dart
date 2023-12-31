import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'appliance_type.dart';

part 'lists_host.g.dart';

@mapMapped
class ListsHost {
  final List<bool> vbools;
  final List<bool>? nvbools;
  final List<String> vstrings;
  final List<String>? nvstrings;
  final List<Duration> vdurations;
  final List<Duration>? nvdurations;
  final List<DateTime> vdatetimes;
  final List<DateTime>? nvdatetimes;
  final List<Decimal> vdecimals;
  final List<Decimal>? nvdecimals;
  final List<int> vints;
  final List<int>? nvints;
  final List<double> vdoubles;
  final List<double>? nvdoubles;
  final List<ApplianceType> vapplianceTypes;
  final List<ApplianceType>? nvapplianceTypes;

  ListsHost({
    required this.vbools,
    required this.vstrings,
    required this.vdurations,
    required this.vdatetimes,
    required this.vdecimals,
    required this.vints,
    required this.vdoubles,
    required this.vapplianceTypes,
    this.nvbools,
    this.nvstrings,
    this.nvdurations,
    this.nvdatetimes,
    this.nvdecimals,
    this.nvints,
    this.nvdoubles,
    this.nvapplianceTypes,
  });
}
