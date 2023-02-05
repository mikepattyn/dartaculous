import 'package:build/build.dart';

class ProtoFromCache implements Builder {
  ProtoFromCache() {
    print('ProtoFromCache constructor');
  }

  @override
  Map<String, List<String>> get buildExtensions {
    return const {
      r'.tproto': ['.proto'],
    };
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;
    final content = await buildStep.readAsString(inputId);
    final copyId = inputId.changeExtension('.proto');

    buildStep.writeAsString(copyId, content);
  }
}
