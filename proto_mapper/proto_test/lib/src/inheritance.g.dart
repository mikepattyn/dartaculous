// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inheritance.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BranchProtoMapper implements ProtoMapper<Branch, TBranch> {
  const $BranchProtoMapper();

  @override
  Branch fromProto(TBranch proto) => _$BranchFromProto(proto);

  @override
  TBranch toProto(Branch entity) => _$BranchToProto(entity);

  Branch fromJson(String json) => _$BranchFromProto(TBranch.fromJson(json));
  String toJson(Branch entity) => _$BranchToProto(entity).writeToJson();

  String toBase64Proto(Branch entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Branch fromBase64Proto(String base64Proto) =>
      TBranch.fromJson(utf8.decode(base64Decode(base64Proto))).toBranch();
}

TBranch _$BranchToProto(Branch instance) {
  var uproto = TBranch();

  if (instance is Twig) {
    uproto.twig = (const $TwigProtoMapper()).toProto(instance);
    return uproto;
  }

  if (instance is Leaf) {
    uproto.leaf = (const $LeafProtoMapper()).toProto(instance);
    return uproto;
  }

  final proto = uproto.branch = TFieldsOfBranch();

  proto.name = instance.name;

  return uproto;
}

Branch _$BranchFromProto(TBranch sInstance) {
  if (sInstance.hasTwig()) {
    return sInstance.twig.toTwig();
  }

  if (sInstance.hasLeaf()) {
    return sInstance.leaf.toLeaf();
  }

  final instance = sInstance.branch;
  final ret = Branch()..name = instance.name;

  return ret;
}

extension $BranchProtoExtension on Branch {
  TBranch toProto() => _$BranchToProto(this);
  String toJson() => _$BranchToProto(this).writeToJson();

  static Branch fromProto(TBranch proto) => _$BranchFromProto(proto);
  static Branch fromJson(String json) =>
      _$BranchFromProto(TBranch.fromJson(json));
}

extension $TBranchProtoExtension on TBranch {
  Branch toBranch() => _$BranchFromProto(this);
}

class $TwigProtoMapper implements ProtoMapper<Twig, LTwig> {
  const $TwigProtoMapper();

  @override
  Twig fromProto(LTwig proto) => _$TwigFromProto(proto);

  @override
  LTwig toProto(Twig entity) => _$TwigToProto(entity);

  Twig fromJson(String json) => _$TwigFromProto(LTwig.fromJson(json));
  String toJson(Twig entity) => _$TwigToProto(entity).writeToJson();

  String toBase64Proto(Twig entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Twig fromBase64Proto(String base64Proto) =>
      LTwig.fromJson(utf8.decode(base64Decode(base64Proto))).toTwig();
}

LTwig _$TwigToProto(Twig instance) {
  var uproto = LTwig();

  if (instance is Leaf) {
    uproto.leaf = (const $LeafProtoMapper()).toProto(instance);
    return uproto;
  }

  final proto = uproto.twig = LFieldsOfTwig();

  proto.name = instance.name;

  return uproto;
}

Twig _$TwigFromProto(LTwig sInstance) {
  if (sInstance.hasLeaf()) {
    return sInstance.leaf.toLeaf();
  }

  final instance = sInstance.twig;
  final ret = Twig()..name = instance.name;

  return ret;
}

extension $TwigProtoExtension on Twig {
  LTwig toProto() => _$TwigToProto(this);
  String toJson() => _$TwigToProto(this).writeToJson();

  static Twig fromProto(LTwig proto) => _$TwigFromProto(proto);
  static Twig fromJson(String json) => _$TwigFromProto(LTwig.fromJson(json));
}

extension $LTwigProtoExtension on LTwig {
  Twig toTwig() => _$TwigFromProto(this);
}

class $LeafProtoMapper implements ProtoMapper<Leaf, TLeaf> {
  const $LeafProtoMapper();

  @override
  Leaf fromProto(TLeaf proto) => _$LeafFromProto(proto);

  @override
  TLeaf toProto(Leaf entity) => _$LeafToProto(entity);

  Leaf fromJson(String json) => _$LeafFromProto(TLeaf.fromJson(json));
  String toJson(Leaf entity) => _$LeafToProto(entity).writeToJson();

  String toBase64Proto(Leaf entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Leaf fromBase64Proto(String base64Proto) =>
      TLeaf.fromJson(utf8.decode(base64Decode(base64Proto))).toLeaf();
}

TLeaf _$LeafToProto(Leaf instance) {
  var proto = TLeaf();

  proto.name = instance.name;

  return proto;
}

Leaf _$LeafFromProto(TLeaf instance) => Leaf()..name = instance.name;

extension $LeafProtoExtension on Leaf {
  TLeaf toProto() => _$LeafToProto(this);
  String toJson() => _$LeafToProto(this).writeToJson();

  static Leaf fromProto(TLeaf proto) => _$LeafFromProto(proto);
  static Leaf fromJson(String json) => _$LeafFromProto(TLeaf.fromJson(json));
}

extension $TLeafProtoExtension on TLeaf {
  Leaf toLeaf() => _$LeafFromProto(this);
}
