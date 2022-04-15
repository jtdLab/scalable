part of 'infrastructure.dart';

/// Base class of all data transfer objects.
///
/// A [Dto] provides methods to convert an [Entity] of type [T] to json and vice versa.
///
/// [Dto]s may have a `fromDomain` factory that converts a [Entity] to an [Dto].
///
/// [Dto]s may have a `fromJson` factory that converts a json to an [Dto].
///
/// ---
///
/// Subclasses of this use code generation by [freezed] powerd with [json_serializable] which
/// delivers useful functionality like pretty toString(), ==, copyWith(), immutability,
/// json serialization and more out of the box.
///
/// For more information about [freezed] visit: https://pub.dev/packages/freezed#unionssealed-classes.
/// For more information about [json_serializable] visit: https://pub.dev/packages/json_serializable.
abstract class Dto<T extends Entity> {
  const Dto();

  /// Returns the [Entity] this belongs to.
  T toDomain();

  /// Returns the json this belongs to.
  Map<String, dynamic> toJson();
}
