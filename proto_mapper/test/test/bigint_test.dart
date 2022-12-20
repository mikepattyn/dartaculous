import 'package:proto_generator_test/grpc/starship.pb.dart';
import 'package:proto_generator_test/src/starship.dart';

import 'package:test/test.dart';

/// Bigint Test
void main() {
  group('BigInt', () {
    test('', () {
      final range = BigInt.from(7654323456765432);
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.range, range);
    });
  });
}
