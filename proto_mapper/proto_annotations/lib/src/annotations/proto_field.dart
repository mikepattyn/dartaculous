class ProtoField {
  final String? name;
  final int? number;
  final int? hasValueNumber;

  @Deprecated('Use ProtoField.auto or ProtoField.numbered')
  const ProtoField({
    this.name,
    this.number,
    this.hasValueNumber,
  });

  const ProtoField.auto({
    this.name,
    this.number,
    this.hasValueNumber,
  });

  const ProtoField.numbered(
    this.number, {
    this.name,
    this.hasValueNumber,
  });
}


@Deprecated('')
const protoField = ProtoField.auto();
