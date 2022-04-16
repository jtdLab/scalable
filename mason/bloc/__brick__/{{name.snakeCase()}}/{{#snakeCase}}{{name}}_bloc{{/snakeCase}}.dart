import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_project/core/injection.dart';

part '{{#snakeCase}}{{name}}_bloc{{/snakeCase}}.freezed.dart';
part '{{#snakeCase}}{{name}}_event{{/snakeCase}}.dart';
part '{{#snakeCase}}{{name}}_state{{/snakeCase}}';

@injectable
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
 
  {{name.pascalCase()}}Bloc()
      : super(
          const {{name.pascalCase()}}State.initial(),
        ) {
    on<_Started>(
      (event, emit) => _handleStarted(event, emit),
    );
  }

  /// Returns instance registered inside getIt.
  factory {{name.pascalCase()}}Bloc.getIt() => getIt<{{name.pascalCase()}}Bloc>();

  /// Handle incoming [_Started] event.
  void _handleStarted(_Started event, Emitter<{{name.pascalCase()}}State> emit) async {
    // TODO: implement handler
    throw UnimplementedError();
  }
}
