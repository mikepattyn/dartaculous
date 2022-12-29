// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inheritance.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BranchProtoMapper implements ProtoMapper<Branch, GBranch> {
  const $BranchProtoMapper();

  @override
  Branch fromProto(GBranch proto) => _$BranchFromProto(proto);

  @override
  GBranch toProto(Branch entity) => _$BranchToProto(entity);

  Branch fromJson(String json) => _$BranchFromProto(GBranch.fromJson(json));
  String toJson(Branch entity) => _$BranchToProto(entity).writeToJson();

  String toBase64Proto(Branch entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Branch fromBase64Proto(String base64Proto) =>
      GBranch.fromJson(utf8.decode(base64Decode(base64Proto))).toBranch();
}

GBranch _$BranchToProto(Branch instance) {
  var proto = GBranch();

  return proto;
}

Branch _$BranchFromProto(GBranch instance) {
  return Branch();
}

extension $BranchProtoExtension on Branch {
  GBranch toProto() => _$BranchToProto(this);
  String toJson() => _$BranchToProto(this).writeToJson();

  static Branch fromProto(GBranch proto) => _$BranchFromProto(proto);
  static Branch fromJson(String json) =>
      _$BranchFromProto(GBranch.fromJson(json));
}

extension $GBranchProtoExtension on GBranch {
  Branch toBranch() => _$BranchFromProto(this);
}

class $TwigProtoMapper implements ProtoMapper<Twig, GTwig> {
  const $TwigProtoMapper();

  @override
  Twig fromProto(GTwig proto) => _$TwigFromProto(proto);

  @override
  GTwig toProto(Twig entity) => _$TwigToProto(entity);

  Twig fromJson(String json) => _$TwigFromProto(GTwig.fromJson(json));
  String toJson(Twig entity) => _$TwigToProto(entity).writeToJson();

  String toBase64Proto(Twig entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Twig fromBase64Proto(String base64Proto) =>
      GTwig.fromJson(utf8.decode(base64Decode(base64Proto))).toTwig();
}

GTwig _$TwigToProto(Twig instance) {
  var proto = GTwig();

  proto.twig.fieldsOfSuperClass = $BranchProtoMapper().toProto(instance).branch;

  return proto;
}

Twig _$TwigFromProto(GTwig instance) {
  return Twig();
}

extension $TwigProtoExtension on Twig {
  GTwig toProto() => _$TwigToProto(this);
  String toJson() => _$TwigToProto(this).writeToJson();

  static Twig fromProto(GTwig proto) => _$TwigFromProto(proto);
  static Twig fromJson(String json) => _$TwigFromProto(GTwig.fromJson(json));
}

extension $GTwigProtoExtension on GTwig {
  Twig toTwig() => _$TwigFromProto(this);
}

class $LeafProtoMapper implements ProtoMapper<Leaf, GLeaf> {
  const $LeafProtoMapper();

  @override
  Leaf fromProto(GLeaf proto) => _$LeafFromProto(proto);

  @override
  GLeaf toProto(Leaf entity) => _$LeafToProto(entity);

  Leaf fromJson(String json) => _$LeafFromProto(GLeaf.fromJson(json));
  String toJson(Leaf entity) => _$LeafToProto(entity).writeToJson();

  String toBase64Proto(Leaf entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Leaf fromBase64Proto(String base64Proto) =>
      GLeaf.fromJson(utf8.decode(base64Decode(base64Proto))).toLeaf();
}

GLeaf _$LeafToProto(Leaf instance) {
  var proto = GLeaf();

  proto.fieldsOfSuperClass = $TwigProtoMapper().toProto(instance).twig;

  return proto;
}

Leaf _$LeafFromProto(GLeaf instance) {
  return Leaf();
}

extension $LeafProtoExtension on Leaf {
  GLeaf toProto() => _$LeafToProto(this);
  String toJson() => _$LeafToProto(this).writeToJson();

  static Leaf fromProto(GLeaf proto) => _$LeafFromProto(proto);
  static Leaf fromJson(String json) => _$LeafFromProto(GLeaf.fromJson(json));
}

extension $GLeafProtoExtension on GLeaf {
  Leaf toLeaf() => _$LeafFromProto(this);
}
