import 'dart:isolate';

import 'package:grpc_host/grpc_host.dart';

class HostParameters<TAppSettings> {
  final SendPort sendPort;
  final Settings<TAppSettings> settings;

  const HostParameters(
    this.sendPort,
    this.settings,
  );
}
