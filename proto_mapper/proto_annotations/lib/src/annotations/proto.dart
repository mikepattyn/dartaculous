typedef KnownSubClasses = Map<Type, int>;

const KnownSubClasses noSubClass = {};
const defaultSuperFieldsNumber = 1;
const defaultOwnFieldsNumber = 1;

class Proto {
  const Proto({
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.knownSubClasses = noSubClass,
  });

  final int superFieldsNumber;
  final int ownFieldsNumber;
  final KnownSubClasses knownSubClasses;
}
