// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/cache_exception_enum.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/server_exception_enum.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/token_exception_enum.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  factory Failure([dynamic message]) = _Failure;
  const factory Failure.serverFailure(ServerExceptionEnum ex,
      [String? message]) = ServerFailed;
  const factory Failure.cacheFailure(CacheExceptionEnum ex, [String? message]) =
      CacheFailed;
  const factory Failure.tokenFailure(TokenExceptionEnum ex, [String? message]) =
      TokenFailed;
  const factory Failure.unknown() = Unknown;
}
