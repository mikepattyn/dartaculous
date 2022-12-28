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
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Branch fromBase64Proto(String base64Proto) => _$BranchFromProto(
      GBranch.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GBranch _$BranchToProto(Branch instance) {
  var uproto = GBranch();
  if (instance is Twig) {
    uproto.twig = (const $TwigProtoMapper()).toProto(instance);
    return uproto;
  }

  final proto = uproto.branch = GFieldsOfBranch();

  return uproto;
}

Branch _$BranchFromProto(GBranch sInstance) {
  if (sInstance.hasTwig()) {
    return sInstance.twig.toTwig();
  }
  final instance = sInstance.branch;
  final ret = Branch();
  return ret;
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
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Twig fromBase64Proto(String base64Proto) =>
      _$TwigFromProto(GTwig.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GTwig _$TwigToProto(Twig instance) {
  var uproto = GTwig();
  if (instance is Leaf) {
    uproto.leaf = (const $LeafProtoMapper()).toProto(instance);
    return uproto;
  }

  final proto = uproto.twig = GFieldsOfTwig();

  return uproto;
}

Twig _$TwigFromProto(GTwig sInstance) {
  if (sInstance.hasLeaf()) {
    return sInstance.leaf.toLeaf();
  }
  final instance = sInstance.twig;
  final ret = Twig();
  return ret;
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
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Leaf fromBase64Proto(String base64Proto) =>
      _$LeafFromProto(GLeaf.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GLeaf _$LeafToProto(Leaf instance) {
  var proto = GLeaf();

  return proto;
}

Leaf _$LeafFromProto(GLeaf instance) => Leaf();

extension $LeafProtoExtension on Leaf {
  GLeaf toProto() => _$LeafToProto(this);
  String toJson() => _$LeafToProto(this).writeToJson();
  static Leaf fromProto(GLeaf proto) => _$LeafFromProto(proto);
  static Leaf fromJson(String json) => _$LeafFromProto(GLeaf.fromJson(json));
}

extension $GLeafProtoExtension on GLeaf {
  Leaf toLeaf() => _$LeafFromProto(this);
}
