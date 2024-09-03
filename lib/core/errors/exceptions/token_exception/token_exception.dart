// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_exception.freezed.dart';

@freezed
abstract class TokenExceptions with _$TokenExceptions {
  factory TokenExceptions([dynamic message]) = _TokenExceptions;
  const factory TokenExceptions.noTokenFailure() = NoTokenFailure;
  const factory TokenExceptions.expiredToken() = ExpiredToken;
  const factory TokenExceptions.invalidToken() = InvalidToken;
  const factory TokenExceptions.unknown() = Unknown;
}