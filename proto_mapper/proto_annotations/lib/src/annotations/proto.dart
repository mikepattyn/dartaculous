typedef KnownSubClasses = Map<Type, int>;

const KnownSubClasses noSubClass = {};
const defaultSuperFieldsNumber = 1;
const defaultOwnFieldsNumber = 1;

class Proto {
  @Deprecated('Use Proto.auto or Proto.numbered')
  const Proto({
    this.includeFieldsByDefault = true,
    this.useProtoFieldNamingConventions,
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.knownSubClasses = noSubClass,
  });

  const Proto.auto({
    this.useProtoFieldNamingConventions,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.knownSubClasses = noSubClass,
  }) : includeFieldsByDefault = true;

  const Proto.forEnum({
    this.useProtoFieldNamingConventions,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.knownSubClasses = noSubClass,
  }) : includeFieldsByDefault = true;

  const Proto.numbered({
    this.useProtoFieldNamingConventions,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.knownSubClasses = noSubClass,
  }) : includeFieldsByDefault = false;

  final bool includeFieldsByDefault;
  final bool? useProtoFieldNamingConventions;
  final int superFieldsNumber;
  final int ownFieldsNumber;
  final KnownSubClasses knownSubClasses;
}

@Deprecated('Use Proto.auto() or Proto.Numbered()')
const proto = Proto();
