import 'dart:async';

// import 'package:args/args.dart';
import 'package:args/command_runner.dart';
//import 'package:sdart/sdart.dart';

void main(List<String> args) async {
  final runner = CommandRunner<String>('draw', 'Draws shapes')
    ..addCommand(SquareCommand());
  // ..addCommand(CircleCommand())
  // ..addCommand(TriangleCommand());
  runner.argParser.addOption('char', help: 'The character to use for drawing');
  final output = await runner.run(args);

  print(output);

  // final pp = ProtoProject();
  // pp.createProject(
  //   'model',
  //   dependencies: {'proto_annotations': '^0.0.0'},
  //   devDependencies: {'proto_generator': '^0.0.0'},
  // );
}

class SquareCommand extends Command<String> {
  SquareCommand() {
    argParser.addOption('size', help: 'Size of the square');
  }

  @override
  String get name => 'square';

  @override
  String get description => 'Draws a square';

  @override
  List<String> get aliases => ['s'];

  @override
  FutureOr<String>? run() {
    final size = int.parse(argResults?['size'] ?? '20');
    final char = (globalResults?['char'] as String?)?[0] ?? '#';
    return draw(size, size, char, (x, y) => true);
  }
}

String draw(
    int width, int height, String char, bool Function(double, double) pixel) {
  final out = StringBuffer();
  for (var y = 0; y <= height; ++y) {
    final ty = 2 * y / height - 1;
    for (var x = 0; x <= width; ++x) {
      final tx = 2 * x / width - 1;
      out.write(pixel(tx, ty) ? char : ' ');
    }
    out.write('\n');
  }
  return out.toString();
}

String drawTriangle(int width, int height, String char) {
  return draw(width, height, char, (x, y) => x.abs() <= (1 + y) / 2);
}
