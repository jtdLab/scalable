import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

export 'package:dartz/dartz.dart' show Either, Right, Left, right, left;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:get_it/get_it.dart';
export 'package:injectable/injectable.dart';
export 'package:kt_dart/kt.dart';

/// The apps dependency injection container.
///
/// For more info see: https://pub.dev/packages/get_it
final getIt = GetIt.instance;

/// Used to annotate dependencies which are
/// registered under certain platforms
class Platform {
  /// preset of common platform name 'android'
  static const android = 'android';

  /// preset of common platform name 'ios'
  static const ios = 'ios';

  /// preset of common platform name 'web'
  static const web = 'web';

  /// preset of common platform name 'linux'
  static const linux = 'linux';

  /// preset of common platform name 'macos'
  static const macos = 'macos';

  /// preset of common platform name 'windows'
  static const windows = 'windows';
}

/// preset instance of common platform name
const android = Environment(Platform.android);

/// preset instance of common platform name
const ios = Environment(Platform.ios);

/// preset instance of common platform name
const web = Environment(Platform.web);

/// preset instance of common platform name
const linux = Environment(Platform.linux);

/// preset instance of common platform name
const macos = Environment(Platform.macos);

/// preset instance of common platform name
const windows = Environment(Platform.windows);
