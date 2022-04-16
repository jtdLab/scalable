import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{project_name.snakeCase()}}/domain/entity.dart';

part '{{name.snakeCase()}}.freezed.dart';

@freezed
class {{name.pascalCase()}} extends Entity with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}({
   // TODO: fields
  }) = _{{name.pascalCase()}};

  /// Returns an instance with random generated properties
  factory {{name.pascalCase()}}.dummy([Faker? f]) {
    final faker = f ?? Faker();

    return {{name.pascalCase()}}(
      // TODO: implement
    );
  }
}
