class Proto {
  @Deprecated('Use Proto.auto or Proto.numbered')
  const Proto({
    this.prefix,
    this.packageName = '',
    this.includeFieldsByDefault = true,
    this.useProtoFieldNamingConventions,
    this.knownSubClasses,
  });

  const Proto.auto({
    this.prefix,
    this.packageName = '',
    this.useProtoFieldNamingConventions,
    this.knownSubClasses,
  }) : includeFieldsByDefault = true;

  const Proto.forEnum({
    this.prefix,
    this.packageName = '',
    this.useProtoFieldNamingConventions,
    this.knownSubClasses,
  }) : includeFieldsByDefault = true;

  const Proto.numbered({
    this.prefix,
    this.packageName = '',
    this.useProtoFieldNamingConventions,
    this.knownSubClasses,
  }) : includeFieldsByDefault = false;

  final String packageName;
  final String? prefix;
  final bool includeFieldsByDefault;
  final bool? useProtoFieldNamingConventions;
  final List<Type>? knownSubClasses;
}

@Deprecated('Use Proto.auto() or Proto.Numbered()')
const proto = Proto();
