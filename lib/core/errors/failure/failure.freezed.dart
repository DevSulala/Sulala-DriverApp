// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function(ServerExceptionEnum ex, String? message)
        serverFailure,
    required TResult Function(CacheExceptionEnum ex, String? message)
        cacheFailure,
    required TResult Function(TokenExceptionEnum ex, String? message)
        tokenFailure,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult? Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult? Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailed value) serverFailure,
    required TResult Function(CacheFailed value) cacheFailure,
    required TResult Function(TokenFailed value) tokenFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(ServerFailed value)? serverFailure,
    TResult? Function(CacheFailed value)? cacheFailure,
    TResult? Function(TokenFailed value)? tokenFailure,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailed value)? serverFailure,
    TResult Function(CacheFailed value)? cacheFailure,
    TResult Function(TokenFailed value)? tokenFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  _$FailureImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'Failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function(ServerExceptionEnum ex, String? message)
        serverFailure,
    required TResult Function(CacheExceptionEnum ex, String? message)
        cacheFailure,
    required TResult Function(TokenExceptionEnum ex, String? message)
        tokenFailure,
    required TResult Function() unknown,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult? Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult? Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult? Function()? unknown,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailed value) serverFailure,
    required TResult Function(CacheFailed value) cacheFailure,
    required TResult Function(TokenFailed value) tokenFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(ServerFailed value)? serverFailure,
    TResult? Function(CacheFailed value)? cacheFailure,
    TResult? Function(TokenFailed value)? tokenFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailed value)? serverFailure,
    TResult Function(CacheFailed value)? cacheFailure,
    TResult Function(TokenFailed value)? tokenFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Failure implements Failure {
  factory _Failure([final dynamic message]) = _$FailureImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailedImplCopyWith<$Res> {
  factory _$$ServerFailedImplCopyWith(
          _$ServerFailedImpl value, $Res Function(_$ServerFailedImpl) then) =
      __$$ServerFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ServerExceptionEnum ex, String? message});
}

/// @nodoc
class __$$ServerFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailedImpl>
    implements _$$ServerFailedImplCopyWith<$Res> {
  __$$ServerFailedImplCopyWithImpl(
      _$ServerFailedImpl _value, $Res Function(_$ServerFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ex = null,
    Object? message = freezed,
  }) {
    return _then(_$ServerFailedImpl(
      null == ex
          ? _value.ex
          : ex // ignore: cast_nullable_to_non_nullable
              as ServerExceptionEnum,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailedImpl implements ServerFailed {
  const _$ServerFailedImpl(this.ex, [this.message]);

  @override
  final ServerExceptionEnum ex;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.serverFailure(ex: $ex, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailedImpl &&
            (identical(other.ex, ex) || other.ex == ex) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ex, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailedImplCopyWith<_$ServerFailedImpl> get copyWith =>
      __$$ServerFailedImplCopyWithImpl<_$ServerFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function(ServerExceptionEnum ex, String? message)
        serverFailure,
    required TResult Function(CacheExceptionEnum ex, String? message)
        cacheFailure,
    required TResult Function(TokenExceptionEnum ex, String? message)
        tokenFailure,
    required TResult Function() unknown,
  }) {
    return serverFailure(ex, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult? Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult? Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult? Function()? unknown,
  }) {
    return serverFailure?.call(ex, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(ex, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailed value) serverFailure,
    required TResult Function(CacheFailed value) cacheFailure,
    required TResult Function(TokenFailed value) tokenFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(ServerFailed value)? serverFailure,
    TResult? Function(CacheFailed value)? cacheFailure,
    TResult? Function(TokenFailed value)? tokenFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailed value)? serverFailure,
    TResult Function(CacheFailed value)? cacheFailure,
    TResult Function(TokenFailed value)? tokenFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailed implements Failure {
  const factory ServerFailed(final ServerExceptionEnum ex,
      [final String? message]) = _$ServerFailedImpl;

  ServerExceptionEnum get ex;
  String? get message;
  @JsonKey(ignore: true)
  _$$ServerFailedImplCopyWith<_$ServerFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailedImplCopyWith<$Res> {
  factory _$$CacheFailedImplCopyWith(
          _$CacheFailedImpl value, $Res Function(_$CacheFailedImpl) then) =
      __$$CacheFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CacheExceptionEnum ex, String? message});
}

/// @nodoc
class __$$CacheFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailedImpl>
    implements _$$CacheFailedImplCopyWith<$Res> {
  __$$CacheFailedImplCopyWithImpl(
      _$CacheFailedImpl _value, $Res Function(_$CacheFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ex = null,
    Object? message = freezed,
  }) {
    return _then(_$CacheFailedImpl(
      null == ex
          ? _value.ex
          : ex // ignore: cast_nullable_to_non_nullable
              as CacheExceptionEnum,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheFailedImpl implements CacheFailed {
  const _$CacheFailedImpl(this.ex, [this.message]);

  @override
  final CacheExceptionEnum ex;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.cacheFailure(ex: $ex, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailedImpl &&
            (identical(other.ex, ex) || other.ex == ex) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ex, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailedImplCopyWith<_$CacheFailedImpl> get copyWith =>
      __$$CacheFailedImplCopyWithImpl<_$CacheFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function(ServerExceptionEnum ex, String? message)
        serverFailure,
    required TResult Function(CacheExceptionEnum ex, String? message)
        cacheFailure,
    required TResult Function(TokenExceptionEnum ex, String? message)
        tokenFailure,
    required TResult Function() unknown,
  }) {
    return cacheFailure(ex, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult? Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult? Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult? Function()? unknown,
  }) {
    return cacheFailure?.call(ex, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(ex, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailed value) serverFailure,
    required TResult Function(CacheFailed value) cacheFailure,
    required TResult Function(TokenFailed value) tokenFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(ServerFailed value)? serverFailure,
    TResult? Function(CacheFailed value)? cacheFailure,
    TResult? Function(TokenFailed value)? tokenFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailed value)? serverFailure,
    TResult Function(CacheFailed value)? cacheFailure,
    TResult Function(TokenFailed value)? tokenFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailed implements Failure {
  const factory CacheFailed(final CacheExceptionEnum ex,
      [final String? message]) = _$CacheFailedImpl;

  CacheExceptionEnum get ex;
  String? get message;
  @JsonKey(ignore: true)
  _$$CacheFailedImplCopyWith<_$CacheFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenFailedImplCopyWith<$Res> {
  factory _$$TokenFailedImplCopyWith(
          _$TokenFailedImpl value, $Res Function(_$TokenFailedImpl) then) =
      __$$TokenFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenExceptionEnum ex, String? message});
}

/// @nodoc
class __$$TokenFailedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TokenFailedImpl>
    implements _$$TokenFailedImplCopyWith<$Res> {
  __$$TokenFailedImplCopyWithImpl(
      _$TokenFailedImpl _value, $Res Function(_$TokenFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ex = null,
    Object? message = freezed,
  }) {
    return _then(_$TokenFailedImpl(
      null == ex
          ? _value.ex
          : ex // ignore: cast_nullable_to_non_nullable
              as TokenExceptionEnum,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TokenFailedImpl implements TokenFailed {
  const _$TokenFailedImpl(this.ex, [this.message]);

  @override
  final TokenExceptionEnum ex;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.tokenFailure(ex: $ex, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenFailedImpl &&
            (identical(other.ex, ex) || other.ex == ex) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ex, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenFailedImplCopyWith<_$TokenFailedImpl> get copyWith =>
      __$$TokenFailedImplCopyWithImpl<_$TokenFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function(ServerExceptionEnum ex, String? message)
        serverFailure,
    required TResult Function(CacheExceptionEnum ex, String? message)
        cacheFailure,
    required TResult Function(TokenExceptionEnum ex, String? message)
        tokenFailure,
    required TResult Function() unknown,
  }) {
    return tokenFailure(ex, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult? Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult? Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult? Function()? unknown,
  }) {
    return tokenFailure?.call(ex, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (tokenFailure != null) {
      return tokenFailure(ex, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailed value) serverFailure,
    required TResult Function(CacheFailed value) cacheFailure,
    required TResult Function(TokenFailed value) tokenFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return tokenFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(ServerFailed value)? serverFailure,
    TResult? Function(CacheFailed value)? cacheFailure,
    TResult? Function(TokenFailed value)? tokenFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return tokenFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailed value)? serverFailure,
    TResult Function(CacheFailed value)? cacheFailure,
    TResult Function(TokenFailed value)? tokenFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tokenFailure != null) {
      return tokenFailure(this);
    }
    return orElse();
  }
}

abstract class TokenFailed implements Failure {
  const factory TokenFailed(final TokenExceptionEnum ex,
      [final String? message]) = _$TokenFailedImpl;

  TokenExceptionEnum get ex;
  String? get message;
  @JsonKey(ignore: true)
  _$$TokenFailedImplCopyWith<_$TokenFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function(ServerExceptionEnum ex, String? message)
        serverFailure,
    required TResult Function(CacheExceptionEnum ex, String? message)
        cacheFailure,
    required TResult Function(TokenExceptionEnum ex, String? message)
        tokenFailure,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult? Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult? Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function(ServerExceptionEnum ex, String? message)? serverFailure,
    TResult Function(CacheExceptionEnum ex, String? message)? cacheFailure,
    TResult Function(TokenExceptionEnum ex, String? message)? tokenFailure,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailed value) serverFailure,
    required TResult Function(CacheFailed value) cacheFailure,
    required TResult Function(TokenFailed value) tokenFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(ServerFailed value)? serverFailure,
    TResult? Function(CacheFailed value)? cacheFailure,
    TResult? Function(TokenFailed value)? tokenFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailed value)? serverFailure,
    TResult Function(CacheFailed value)? cacheFailure,
    TResult Function(TokenFailed value)? tokenFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements Failure {
  const factory Unknown() = _$UnknownImpl;
}
