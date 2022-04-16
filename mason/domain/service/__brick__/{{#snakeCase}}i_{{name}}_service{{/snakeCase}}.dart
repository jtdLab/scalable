import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{project_name}}/domain/failure.dart';
import 'package:{{project_name}}/domain/service.dart';

part '{{#snakeCase}}i_{{name}}_service{{/snakeCase}}.freezed.dart';

// TODO: Description
abstract class I{{name.pascalCase()}}Service extends Service {
  Either<{{name.pascalCase()}}ServiceMethod1Failure, dynamic>> method1();
  Future<Either<{{name.pascalCase()}}ServiceMethod2Failure, dynamic>>> method2();
}

/// [Failure] union that belongs to [I{{name.pascalCase()}}AService.method1].
@freezed
class {{name.pascalCase()}}ServiceMethod1Failure extends Failure
    with _${{name.pascalCase()}}ServiceMethod1Failure {
  const factory {{name.pascalCase()}}ServiceMethod1Failure.failureA() =
      _Method1FailureA;
  const factory {{name.pascalCase()}}ServiceMethod1Failure.failureB() =
      _Method1FailureB;
}

/// [Failure] union that belongs to [I{{name.pascalCase()}}AService.method2].
@freezed
class {{name.pascalCase()}}ServiceMethod2Failure extends Failure
    with _${{name.pascalCase()}}ServiceMethod2Failure {
  const factory {{name.pascalCase()}}ServiceMethod2Failure.failureA() =
      _Method2FailureA;
  const factory {{name.pascalCase()}}ServiceMethod2Failure.failureB() =
      _Method2FailureB;
}