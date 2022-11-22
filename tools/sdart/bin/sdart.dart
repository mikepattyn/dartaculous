import 'package:sdart/sdart.dart';

void main(List<String> arguments) {
  final pp = ProtoProject();
  pp.createProject(
    'xpto',
    dependencies: {'proto_annotations': '^0.0.0'},
    devDependencies: {'proto_generator': '^0.0.0'},
  );
}
