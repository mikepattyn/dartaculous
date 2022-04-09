// ignore_for_file: deprecated_member_use_from_same_package

import 'dart:io';

import 'package:grpc_host/grpc_host.dart';
import 'package:grpc_host/src/configuration/ssl_settings.dart';
import 'package:yaml/yaml.dart';

class HostSettings {
  static const defaultIsolatesMultiplier = 1;
  static const defaultExtraIsolates = 0;

  final int isolatesMultiplier;
  final int extraIsolates;
  final int port;
  final SslSettings sslSettings;

  HostSettings({
    this.isolatesMultiplier = defaultIsolatesMultiplier,
    this.extraIsolates = defaultExtraIsolates,
    this.port = 8080,
    this.sslSettings = const SslSettings(),
  });

  factory HostSettings.fromYamlFile({String filename = 'appsettings.yaml'}) {
    var yamlDocument = File(filename).readYaml();
    if (yamlDocument == null) return HostSettings();

    final ret = HostSettings.fromYaml(yamlDocument);

    return ret;
  }

  factory HostSettings.fromYaml(YamlMap yamlDocument) {
    final port = yamlDocument['port'] as int? ?? 8080;
    final server = yamlDocument['server'];
    final isolatesMultiplier = server != null
        ? server['isolatesMultiplier'] ?? defaultIsolatesMultiplier
        : defaultIsolatesMultiplier;
    final extraIsolates = server != null
        ? server['extraIsolates'] ?? defaultExtraIsolates
        : defaultIsolatesMultiplier;
    final sslSettingsYaml = yamlDocument['ssl'];
    final sslSettings = sslSettingsYaml == null
        ? SslSettings()
        : SslSettings.fromYaml(sslSettingsYaml);

    var ret = HostSettings(
      port: port,
      isolatesMultiplier: isolatesMultiplier,
      extraIsolates: extraIsolates,
      sslSettings: sslSettings,
    );

    return ret;
  }

  HostSettings copyWith({
    int? isolatesMultiplier,
    int? extraIsolates,
    int? port,
    SslSettings? sslSettings,
  }) {
    return HostSettings(
      isolatesMultiplier: isolatesMultiplier ?? this.isolatesMultiplier,
      extraIsolates: extraIsolates ?? this.extraIsolates,
      port: port ?? this.port,
      sslSettings: sslSettings ?? this.sslSettings,
    );
  }
}
