import 'package:get_it/get_it.dart';

export 'package:dartz/dartz.dart' hide emptyMap, emptySet;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:get_it/get_it.dart';
export 'package:injectable/injectable.dart';
export 'package:kt_dart/kt.dart';

/// The apps dependency injection container.
///
/// For more info see: https://pub.dev/packages/get_it
final getIt = GetIt.instance;
