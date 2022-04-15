part of 'domain.dart';

/// Base class of all failures.
///
/// Subclasses of this use code generation by [freezed] which delivers useful functionality
/// like unions out of the box.
///
/// For more information visit: https://pub.dev/packages/freezed#unionssealed-classes.
abstract class Failure {
  const Failure();
}
