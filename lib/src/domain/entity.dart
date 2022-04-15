part of 'domain.dart';

/// Base class of all entities.
///
/// Entitys may only contain primitiv data types, immutable collections from [kt],
/// [ValueObject]s or other [Entity]s.
///
/// [Entity]s may have a `dummy` factory which returns an instance with random generated properties.
///
/// ---
///
/// For more information about [kt] visit: https://pub.dev/packages/kt_dart.
///
/// Subclasses of this use code generation by [freezed] which delivers useful functionality
/// like pretty toString(), ==, copyWith(), immutability and more out of the box.
///
/// For more information about [freezed] visit: https://pub.dev/packages/freezed#unionssealed-classes.
@immutable
abstract class Entity {
  const Entity();
}
