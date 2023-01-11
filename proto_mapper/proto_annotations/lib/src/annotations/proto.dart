typedef KnownSubClasses = Map<Type, int>;

const KnownSubClasses noSubClass = {};
const defaultSuperFieldsNumber = 1;
const defaultOwnFieldsNumber = 1;

class Proto {
  const Proto({
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.knownSubClassMap = noSubClass,
  });

  final int superFieldsNumber;
  final int ownFieldsNumber;
  final KnownSubClasses knownSubClassMap;
}

const proto = Proto();
