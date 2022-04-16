import 'package:args/args.dart';

void main(List<String> args) {
  final parser = ArgParser()..addCommand('create');

  ArgResults argResults = parser.parse(args);
  final command = argResults.arguments;

  print('You requested $command');
}
