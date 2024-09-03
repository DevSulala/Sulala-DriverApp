// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache_exceptions.freezed.dart';

@freezed
abstract class CacheExceptions with _$CacheExceptions {
  factory CacheExceptions([dynamic message]) = _CacheExceptions;
  const factory CacheExceptions.noData() = NoData;
  const factory CacheExceptions.cacheFailure() = CacheFailure;
  const factory CacheExceptions.unknown([dynamic message]) = Unknown;
}
