import 'dart:typed_data';

class LocalChangeEntity {
  final String id;
  final String rev;
  final Uint8List protoBytes;

  LocalChangeEntity({
    required this.id,
    required this.rev,
    required this.protoBytes,
  });
}
