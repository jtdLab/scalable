import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{project_name.snakeCase()}}/infrastructure/dto.dart';

part '{{name.snakeCase()}}_dto.freezed.dart';
part '{{name.snakeCase()}}_dto.g.dart';

@freezed
class {{name.pascalCase()}}Dto extends Dto<{{entity.pascalCase()}}> with _${{entity.pascalCase()}}Dto {
  const factory {{entity.pascalCase()}}Dto({
   // TODO: fields
  }) = _{{entity.pascalCase()}}Dto;

  const {{entity.pascalCase()}}Dto._();

  factory {{entity.pascalCase()}}Dto.fromDomain({{entity.pascalCase()}} domain) {
    return {{entity.pascalCase()}}(
      // TODO: implement
    );
  }

  @override
  {{entity.pascalCase()}} toDomain() {
    return {{entity.pascalCase()}}(
      // TODO: implement
    );
  }

  factory {{entity.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{entity.pascalCase()}}FromJson(json);
}
