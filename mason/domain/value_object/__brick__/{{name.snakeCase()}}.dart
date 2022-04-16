import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{package_name.snakeCase()}}/domain/value_object.dart';

part '{{name.snakeCase()}}.freezed.dart';

/// {@template {{name.snakeCase()}}}
/// ***Valid***:
///
/// TODO: valid cases
///
/// ---
///
/// ***Invalid***:
///
/// TODO: invalid cases
/// {@endtemplate}
class {{name.pascalCase()}} extends ValueObject<{{type}}> {
  @override
  final Either<{{name.pascalCase()}}Failure, {{type}}> value;

  /// {@macro example_value_object_a}
  factory {{name.pascalCase()}}({{type}} raw) {
    return {{name.pascalCase()}}._(_validate(raw));
  }

  const {{name.pascalCase()}}._(this.value);

  /// ***Returns [raw]***:
  ///
  /// TODO: valid cases
  ///
  /// ---
  ///
  /// ***Returns [{{name.pascalCase()}}Failure]***:
  ///
  /// TODO: invalid cases
  static Either<{{name.pascalCase()}}Failure, {{type}}> _validate({{type}} raw) {
    // TODO: implement validation
  }

  @override
  String toString() => value.fold(
        (failure) => '{{name.pascalCase()}}($failure)',
        (value) => '{{name.pascalCase()}}($value)',
      );
}

/// [ValueFailure] union that belongs to [{{name.pascalCase()}}].
@freezed
class {{name.pascalCase()}}Failure extends ValueFailure<{{type}}>
    with _${{name.pascalCase()}}Failure {
  const factory {{name.pascalCase()}}Failure.failureA({
    required {{type}} failedValue,
  }) = _FailureA;
   const factory {{name.pascalCase()}}Failure.failureB({
    required {{type}} failedValue,
  }) = _FailureB;
}
