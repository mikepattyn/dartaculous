import 'dart:convert';

import 'package:arango_driver/arango_driver.dart';

class CollectionKeyOptions {
  final KeyTypes type;
  final bool allowUserKeys;
  final int increment;
  final int offset;

  const CollectionKeyOptions({
    this.type = KeyTypes.traditional,
    this.allowUserKeys = true,
    this.increment = 1,
    this.offset = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'type': type.toJsonValue(),
      'allowUserKeys': allowUserKeys,
      'increment': increment,
      'offset': offset,
    };
  }

  String toJson() => json.encode(toMap());
}
