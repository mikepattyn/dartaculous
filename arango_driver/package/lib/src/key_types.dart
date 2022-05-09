enum KeyTypes {
  traditional,
  autoincrement,
  uuid,
  padded,
}

extension KT on KeyTypes {
  String toJsonValue() {
    switch (this) {
      case KeyTypes.traditional:
        return 'traditional';
      case KeyTypes.autoincrement:
        return 'autoincrement';
      case KeyTypes.uuid:
        return 'uuid';
      case KeyTypes.padded:
        return 'padded';
      default:
        throw UnimplementedError();
    }
  }
}
