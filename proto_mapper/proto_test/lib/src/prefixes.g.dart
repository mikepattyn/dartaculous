// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefixes.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $StaffProtoMapper implements ProtoMapper<Staff, BStaff> {
  const $StaffProtoMapper();

  @override
  Staff fromProto(BStaff proto) => _$StaffFromProto(proto);
  @override
  BStaff toProto(Staff entity) => _$StaffToProto(entity);
  Staff fromJson(String json) => _$StaffFromProto(BStaff.fromJson(json));
  String toJson(Staff entity) => _$StaffToProto(entity).writeToJson();
  String toBase64Proto(Staff entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Staff fromBase64Proto(String base64Proto) =>
      _$StaffFromProto(BStaff.fromJson(utf8.decode(base64Decode(base64Proto))));
}

BStaff _$StaffToProto(Staff instance) {
  var uproto = BStaff();
  if (instance is Chef) {
    uproto.chef = (const $ChefProtoMapper()).toProto(instance);
    return uproto;
  }

  if (instance is Waiter) {
    uproto.waiter = (const $WaiterProtoMapper()).toProto(instance);
    return uproto;
  }

  if (instance is Manager) {
    uproto.manager = (const $ManagerProtoMapper()).toProto(instance);
    return uproto;
  }

  throw UnimplementedError();
}

Staff _$StaffFromProto(BStaff sInstance) {
  if (sInstance.hasChef()) {
    return sInstance.chef.toChef();
  }

  if (sInstance.hasWaiter()) {
    return sInstance.waiter.toWaiter();
  }

  if (sInstance.hasManager()) {
    return sInstance.manager.toManager();
  }
  throw UnimplementedError();
}

extension $StaffProtoExtension on Staff {
  BStaff toProto() => _$StaffToProto(this);
  String toJson() => _$StaffToProto(this).writeToJson();
  static Staff fromProto(BStaff proto) => _$StaffFromProto(proto);
  static Staff fromJson(String json) => _$StaffFromProto(BStaff.fromJson(json));
}

extension $BStaffProtoExtension on BStaff {
  Staff toStaff() => _$StaffFromProto(this);
}

class $ChefProtoMapper implements ProtoMapper<Chef, CChef> {
  const $ChefProtoMapper();

  @override
  Chef fromProto(CChef proto) => _$ChefFromProto(proto);
  @override
  CChef toProto(Chef entity) => _$ChefToProto(entity);
  Chef fromJson(String json) => _$ChefFromProto(CChef.fromJson(json));
  String toJson(Chef entity) => _$ChefToProto(entity).writeToJson();
  String toBase64Proto(Chef entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Chef fromBase64Proto(String base64Proto) =>
      _$ChefFromProto(CChef.fromJson(utf8.decode(base64Decode(base64Proto))));
}

CChef _$ChefToProto(Chef instance) {
  var proto = CChef();

  proto.name = instance.name;
  proto.favoriteFood = AFoodCategory.valueOf(instance.favoriteFood.index)!;
  proto.manager = const $ManagerProtoMapper().toProto(instance.manager);

  return proto;
}

Chef _$ChefFromProto(CChef instance) => Chef()
  ..name = instance.name
  ..favoriteFood = FoodCategory.values[instance.favoriteFood.value]
  ..manager = const $ManagerProtoMapper().fromProto(instance.manager);

extension $ChefProtoExtension on Chef {
  CChef toProto() => _$ChefToProto(this);
  String toJson() => _$ChefToProto(this).writeToJson();
  static Chef fromProto(CChef proto) => _$ChefFromProto(proto);
  static Chef fromJson(String json) => _$ChefFromProto(CChef.fromJson(json));
}

extension $CChefProtoExtension on CChef {
  Chef toChef() => _$ChefFromProto(this);
}

class $WaiterProtoMapper implements ProtoMapper<Waiter, GWaiter> {
  const $WaiterProtoMapper();

  @override
  Waiter fromProto(GWaiter proto) => _$WaiterFromProto(proto);
  @override
  GWaiter toProto(Waiter entity) => _$WaiterToProto(entity);
  Waiter fromJson(String json) => _$WaiterFromProto(GWaiter.fromJson(json));
  String toJson(Waiter entity) => _$WaiterToProto(entity).writeToJson();
  String toBase64Proto(Waiter entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Waiter fromBase64Proto(String base64Proto) => _$WaiterFromProto(
      GWaiter.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GWaiter _$WaiterToProto(Waiter instance) {
  var proto = GWaiter();

  proto.name = instance.name;
  proto.favoriteFood = AFoodCategory.valueOf(instance.favoriteFood.index)!;
  proto.manager = const $ManagerProtoMapper().toProto(instance.manager);
  proto.table
      .addAll(instance.table.map((e) => const $TableProtoMapper().toProto(e)));

  return proto;
}

Waiter _$WaiterFromProto(GWaiter instance) => Waiter()
  ..name = instance.name
  ..favoriteFood = FoodCategory.values[instance.favoriteFood.value]
  ..manager = const $ManagerProtoMapper().fromProto(instance.manager)
  ..table = List<Table>.unmodifiable(
      instance.table.map((e) => const $TableProtoMapper().fromProto(e)));

extension $WaiterProtoExtension on Waiter {
  GWaiter toProto() => _$WaiterToProto(this);
  String toJson() => _$WaiterToProto(this).writeToJson();
  static Waiter fromProto(GWaiter proto) => _$WaiterFromProto(proto);
  static Waiter fromJson(String json) =>
      _$WaiterFromProto(GWaiter.fromJson(json));
}

extension $GWaiterProtoExtension on GWaiter {
  Waiter toWaiter() => _$WaiterFromProto(this);
}

class $ManagerProtoMapper implements ProtoMapper<Manager, MManager> {
  const $ManagerProtoMapper();

  @override
  Manager fromProto(MManager proto) => _$ManagerFromProto(proto);
  @override
  MManager toProto(Manager entity) => _$ManagerToProto(entity);
  Manager fromJson(String json) => _$ManagerFromProto(MManager.fromJson(json));
  String toJson(Manager entity) => _$ManagerToProto(entity).writeToJson();
  String toBase64Proto(Manager entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Manager fromBase64Proto(String base64Proto) => _$ManagerFromProto(
      MManager.fromJson(utf8.decode(base64Decode(base64Proto))));
}

MManager _$ManagerToProto(Manager instance) {
  var proto = MManager();

  proto.name = instance.name;
  proto.favoriteFood = AFoodCategory.valueOf(instance.favoriteFood.index)!;

  return proto;
}

Manager _$ManagerFromProto(MManager instance) => Manager()
  ..name = instance.name
  ..favoriteFood = FoodCategory.values[instance.favoriteFood.value];

extension $ManagerProtoExtension on Manager {
  MManager toProto() => _$ManagerToProto(this);
  String toJson() => _$ManagerToProto(this).writeToJson();
  static Manager fromProto(MManager proto) => _$ManagerFromProto(proto);
  static Manager fromJson(String json) =>
      _$ManagerFromProto(MManager.fromJson(json));
}

extension $MManagerProtoExtension on MManager {
  Manager toManager() => _$ManagerFromProto(this);
}

class $TableProtoMapper implements ProtoMapper<Table, TTable> {
  const $TableProtoMapper();

  @override
  Table fromProto(TTable proto) => _$TableFromProto(proto);
  @override
  TTable toProto(Table entity) => _$TableToProto(entity);
  Table fromJson(String json) => _$TableFromProto(TTable.fromJson(json));
  String toJson(Table entity) => _$TableToProto(entity).writeToJson();
  String toBase64Proto(Table entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Table fromBase64Proto(String base64Proto) =>
      _$TableFromProto(TTable.fromJson(utf8.decode(base64Decode(base64Proto))));
}

TTable _$TableToProto(Table instance) {
  var proto = TTable();

  proto.number = instance.number;

  return proto;
}

Table _$TableFromProto(TTable instance) => Table()..number = instance.number;

extension $TableProtoExtension on Table {
  TTable toProto() => _$TableToProto(this);
  String toJson() => _$TableToProto(this).writeToJson();
  static Table fromProto(TTable proto) => _$TableFromProto(proto);
  static Table fromJson(String json) => _$TableFromProto(TTable.fromJson(json));
}

extension $TTableProtoExtension on TTable {
  Table toTable() => _$TableFromProto(this);
}

class $RestaurantProtoMapper implements ProtoMapper<Restaurant, RRestaurant> {
  const $RestaurantProtoMapper();

  @override
  Restaurant fromProto(RRestaurant proto) => _$RestaurantFromProto(proto);
  @override
  RRestaurant toProto(Restaurant entity) => _$RestaurantToProto(entity);
  Restaurant fromJson(String json) =>
      _$RestaurantFromProto(RRestaurant.fromJson(json));
  String toJson(Restaurant entity) => _$RestaurantToProto(entity).writeToJson();
  String toBase64Proto(Restaurant entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Restaurant fromBase64Proto(String base64Proto) => _$RestaurantFromProto(
      RRestaurant.fromJson(utf8.decode(base64Decode(base64Proto))));
}

RRestaurant _$RestaurantToProto(Restaurant instance) {
  var proto = RRestaurant();

  proto.waiters.addAll(
      instance.waiters.map((e) => const $WaiterProtoMapper().toProto(e)));

  proto.chefs
      .addAll(instance.chefs.map((e) => const $ChefProtoMapper().toProto(e)));

  return proto;
}

Restaurant _$RestaurantFromProto(RRestaurant instance) => Restaurant()
  ..waiters = List<Waiter>.unmodifiable(
      instance.waiters.map((e) => const $WaiterProtoMapper().fromProto(e)))
  ..chefs = List<Chef>.unmodifiable(
      instance.chefs.map((e) => const $ChefProtoMapper().fromProto(e)));

extension $RestaurantProtoExtension on Restaurant {
  RRestaurant toProto() => _$RestaurantToProto(this);
  String toJson() => _$RestaurantToProto(this).writeToJson();
  static Restaurant fromProto(RRestaurant proto) =>
      _$RestaurantFromProto(proto);
  static Restaurant fromJson(String json) =>
      _$RestaurantFromProto(RRestaurant.fromJson(json));
}

extension $RRestaurantProtoExtension on RRestaurant {
  Restaurant toRestaurant() => _$RestaurantFromProto(this);
}

class $CustomerProtoMapper implements ProtoMapper<Customer, WCustomer> {
  const $CustomerProtoMapper();

  @override
  Customer fromProto(WCustomer proto) => _$CustomerFromProto(proto);
  @override
  WCustomer toProto(Customer entity) => _$CustomerToProto(entity);
  Customer fromJson(String json) =>
      _$CustomerFromProto(WCustomer.fromJson(json));
  String toJson(Customer entity) => _$CustomerToProto(entity).writeToJson();
  String toBase64Proto(Customer entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Customer fromBase64Proto(String base64Proto) => _$CustomerFromProto(
      WCustomer.fromJson(utf8.decode(base64Decode(base64Proto))));
}

WCustomer _$CustomerToProto(Customer instance) {
  var proto = WCustomer();

  proto.favoriteRestaurant =
      const $RestaurantProtoMapper().toProto(instance.favoriteRestaurant);
  proto.favoriteChef = const $ChefProtoMapper().toProto(instance.favoriteChef);

  return proto;
}

Customer _$CustomerFromProto(WCustomer instance) => Customer()
  ..favoriteRestaurant =
      const $RestaurantProtoMapper().fromProto(instance.favoriteRestaurant)
  ..favoriteChef = const $ChefProtoMapper().fromProto(instance.favoriteChef);

extension $CustomerProtoExtension on Customer {
  WCustomer toProto() => _$CustomerToProto(this);
  String toJson() => _$CustomerToProto(this).writeToJson();
  static Customer fromProto(WCustomer proto) => _$CustomerFromProto(proto);
  static Customer fromJson(String json) =>
      _$CustomerFromProto(WCustomer.fromJson(json));
}

extension $WCustomerProtoExtension on WCustomer {
  Customer toCustomer() => _$CustomerFromProto(this);
}

class $FoodCategoryProtoMapper
    implements ProtoMapper<FoodCategory, AFoodCategory> {
  const $FoodCategoryProtoMapper();

  @override
  FoodCategory fromProto(AFoodCategory proto) =>
      FoodCategory.values[proto.value];
  @override
  AFoodCategory toProto(FoodCategory entity) =>
      AFoodCategory.valueOf(entity.index)!;
}

extension $AFoodCategoryProtoExtension on AFoodCategory {
  FoodCategory toFoodCategory() =>
      const $FoodCategoryProtoMapper().fromProto(this);
}
