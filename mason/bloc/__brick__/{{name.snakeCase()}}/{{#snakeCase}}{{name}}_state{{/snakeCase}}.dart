part of '{{#snakeCase}}{{name}}_bloc{{/snakeCase}}.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.initial() = _Initial;
}
