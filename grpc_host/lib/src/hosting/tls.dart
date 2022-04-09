import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';

Future<ServerTlsCredentials?> getServerTlsCredentials(
    HostSettings hostSettings) async {
  final sslSettings = hostSettings.sslSettings;
  if (sslSettings.certificatePath.isEmpty) {
    return null;
  }

  final List<int> certificate =
      await File(sslSettings.certificatePath).readAsBytes();
  final List<int>? privateKey = sslSettings.privateKeyPath.isEmpty
      ? null
      : await File(sslSettings.privateKeyPath).readAsBytes();

  return ServerTlsCredentials(
    certificate: certificate,
    privateKey: privateKey,
  );
}
