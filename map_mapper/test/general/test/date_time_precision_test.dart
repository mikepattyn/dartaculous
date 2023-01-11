import 'package:map_mapper_generator_test/map_mapper_generator_test.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  // print(args.length);
  group('datetime representation tests', () {
    test('default dt', () async {
      var sub = DefaultDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toDefaultDt();

      if (await isMillisecondPrecision) {
        expect(sub2.prop1.millisecondsSinceEpoch,
            DateTime(2022, 1, 14, 10, 34, 7, 13, 17).millisecondsSinceEpoch);
        expect(sub2.prop2?.millisecondsSinceEpoch,
            DateTime(2022, 1, 14, 10, 34, 7, 14, 19).millisecondsSinceEpoch);
      } else {
        expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
        expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
      }
    });

    test('default dt with null prop2', () async {
      var sub = DefaultDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toDefaultDt();

      if (await isMillisecondPrecision) {
        expect(sub2.prop1.millisecondsSinceEpoch,
            DateTime(2022, 1, 14, 10, 34, 7, 13, 17).millisecondsSinceEpoch);
      } else {
        expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      }
      expect(sub2.prop2, null);
    });

    test('iso dt', () {
      var sub = IsoDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toIsoDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
    });

    test('iso dt with null prop2', () {
      var sub = IsoDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toIsoDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, null);
    });

    test('micro dt', () {
      var sub = MicroDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMicroDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
    });

    test('micro dt with null prop2', () {
      var sub = MicroDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMicroDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, null);
    });

    test('milli dt', () {
      var sub = MilliDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMilliDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14));
    });

    test('milli dt with null prop2', () {
      var sub = MilliDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMilliDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13));
      expect(sub2.prop2, null);
    });
  });
}
