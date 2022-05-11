import 'package:decimal/decimal.dart';
import 'package:map_mapper_generator_test/src/polymorphism/abstract_vehicle.dart';
import 'package:map_mapper_generator_test/src/polymorphism/aircraft.dart';
import 'package:map_mapper_generator_test/src/polymorphism/airplane.dart';
import 'package:map_mapper_generator_test/src/polymorphism/balloon.dart';
import 'package:map_mapper_generator_test/src/polymorphism/bicycle.dart';
import 'package:map_mapper_generator_test/src/polymorphism/car.dart';
import 'package:map_mapper_generator_test/src/polymorphism/entity.dart';
import 'package:map_mapper_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:map_mapper_generator_test/src/polymorphism/helicopter.dart';
import 'package:map_mapper_generator_test/src/polymorphism/rotorcraft.dart';
import 'package:map_mapper_generator_test/src/polymorphism/scooter.dart';
import 'package:map_mapper_generator_test/src/polymorphism/vehicle.dart';
import 'package:test/test.dart';

void main() {
  group('polymorphism test', () {
    test('car test', () {
      final car = Car(numberOfDoors: 4, weight: 1500);
      final mcar = car.toMap();
      final car2 = mcar.toCar();

      expect(car2, car);
    });

    test('airplane test', () {
      final airplane = Airplane(
          key: 'at',
          serviceCeiling: Decimal.fromInt(10000),
          wingspan: 10,
          weight: 1500);
      final mairplane = airplane.toMap();
      final airplane2 = mairplane.toAirplane();

      expect(airplane2, airplane);
    });

    test('vehicle test', () {
      final vehicle = Vehicle(weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2 is Airplane, false);
      expect(vehicle2 is Car, false);
    });

    test('bicycle test', () {
      final bicycle =
          Bicycle(key: 'a', wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final mbicycle = bicycle.toMap();
      final bicycle2 = mbicycle.toBicycle();

      expect(bicycle2, bicycle);
    });

    test('scooter test', () {
      final scooter = Scooter(key: 'b', weight: 1500);
      final mscooter = scooter.toMap();
      final scooter2 = mscooter.toScooter();

      expect(scooter2, scooter);
    });

    test('poly-car test', () {
      final Vehicle vehicle = Car(numberOfDoors: 4, weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Car>());
    });
    test('poly-airplane test', () {
      final Vehicle vehicle = Airplane(
          key: 'pat',
          serviceCeiling: Decimal.fromInt(11000),
          wingspan: 13,
          weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Airplane>());
    });

    test('poly-helicopter test', () {
      final Vehicle vehicle = Helicopter(
          key: 'pht', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Helicopter>());
    });

    test('poly-gyropcopter test', () {
      final Vehicle vehicle = Gyrocopter(
          key: 'pgt', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Gyrocopter>());
    });

    test('poly-aircraft-airplane test', () {
      final Aircraft aircraft = Airplane(
          key: 'paat',
          serviceCeiling: Decimal.fromInt(11000),
          wingspan: 13,
          weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Airplane>());
    });

    test('poly-aircraft-helicopter test', () {
      final Aircraft aircraft = Helicopter(
          key: 'paht', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Helicopter>());
    });

    test('poly-aircraft-gyrocopter test', () {
      final Aircraft aircraft = Gyrocopter(
          key: 'pagt', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Gyrocopter>());
    });

    test('poly-rotorcraft-helicopter test', () {
      final Rotorcraft aircraft = Helicopter(
          key: 'prht', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Helicopter>());
    });

    test('poly-rotorcraft-gyrocopter test', () {
      final Rotorcraft aircraft = Gyrocopter(
          key: 'prgt', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toRotorcraft();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Gyrocopter>());
    });

    test('poly-balloon test', () {
      final Vehicle aircraft = Balloon(
          key: 'pbs', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Balloon>());
    });

    test('poly-aircraft-balloon test', () {
      final Aircraft aircraft = Balloon(
          key: 'pabt', serviceCeiling: Decimal.fromInt(11000), weight: 1500);
      final mvehicle = aircraft.toMap();
      final vehicle2 = mvehicle.toAircraft();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Balloon>());
    });

    test('multi poly test', () {
      final car = Car(numberOfDoors: 4, weight: 1500);
      final airplane = Airplane(
          key: 'mpt',
          serviceCeiling: Decimal.fromInt(9500),
          wingspan: 13,
          weight: 1500);
      final vehicle = Vehicle(weight: 1500);

      final vehicles = <Vehicle>[car, vehicle, airplane];
      final maps = vehicles.map((v) => v.toMap());
      final vehicles2 = maps.map((m) => m.toVehicle()).toList();

      final car2 = vehicles2[0] as Car;
      final vehicle2 = vehicles[1];
      final airplane2 = vehicles2[2] as Airplane;

      expect(car2, car);

      expect(airplane2, airplane);

      expect(vehicle2, vehicle);
      expect(vehicle2 is Airplane, false);
      expect(vehicle2 is Car, false);
    });

    test('poly-bicycle test', () {
      final AbstractVehicle vehicle =
          Bicycle(key: 'c', wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toAbstractVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Bicycle>());
    });

    test('poly-scooter test', () {
      final AbstractVehicle vehicle = Scooter(key: 'd', weight: 1500);
      final mvehicle = vehicle.toMap();
      final vehicle2 = mvehicle.toAbstractVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Scooter>());
    });

    test('multi abstract poly test', () {
      final bicycle = Bicycle(
          key: 'mapt', wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final scooter = Scooter(key: 'a', weight: 1500);

      final abstractVehicles = <AbstractVehicle>[bicycle, scooter];
      final maps = abstractVehicles.map((v) => v.toMap());
      final abstractVehicles2 = maps.map((m) => m.toAbstractVehicle()).toList();

      final bicycle2 = abstractVehicles2[0];
      final scooter2 = abstractVehicles2[1];

      expect(bicycle2, bicycle);
      expect(bicycle2, TypeMatcher<Bicycle>());

      expect(scooter2, scooter);
      expect(scooter2, TypeMatcher<Scooter>());
    });

    test('abstract-vehicle type test', () {
      expect($AbstractVehicleMapMapper.$type, 'AbstractVehicle');
    });

    test('abstract-vehicle type test', () {
      expect($AbstractVehicleMapMapper.$type, 'AbstractVehicle');
    });

    test('vehicle type test', () {
      expect($VehicleMapMapper.$type, 'Vehicle');
    });

    test('entity type test', () {
      expect($EntityMapMapper.$type, 'Entity');
    });

    test('scooter type test', () {
      expect($ScooterMapMapper.$type, 'Scooter');
    });

    test('car type test', () {
      expect($CarMapMapper.$type, 'Car');
    });

    test('bicycle type test', () {
      expect($BicycleMapMapper.$type, 'Bicycle');
    });

    test('aircraft type test', () {
      expect($AircraftMapMapper.$type, 'Aircraft');
    });

    test('rotorcraft type test', () {
      expect($RotorcraftMapMapper.$type, 'Rotorcraft');
    });

    test('airplane type test', () {
      expect($AirplaneMapMapper.$type, 'Airplane');
    });

    test('Balloon type test', () {
      expect($BalloonMapMapper.$type, 'Balloon');
    });

    test('gyrocopter type test', () {
      expect($GyrocopterMapMapper.$type, 'Gyrocopter');
    });

    test('helicopter type test', () {
      expect($HelicopterMapMapper.$type, 'Helicopter');
    });
  });
}
