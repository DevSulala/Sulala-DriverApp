// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noTokenFailure,
    required TResult Function() expiredToken,
    required TResult Function() invalidToken,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noTokenFailure,
    TResult? Function()? expiredToken,
    TResult? Function()? invalidToken,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noTokenFailure,
    TResult Function()? expiredToken,
    TResult Function()? invalidToken,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenExceptions value) $default, {
    required TResult Function(NoTokenFailure value) noTokenFailure,
    required TResult Function(ExpiredToken value) expiredToken,
    required TResult Function(InvalidToken value) invalidToken,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenExceptions value)? $default, {
    TResult? Function(NoTokenFailure value)? noTokenFailure,
    TResult? Function(ExpiredToken value)? expiredToken,
    TResult? Function(InvalidToken value)? invalidToken,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenExceptions value)? $default, {
    TResult Function(NoTokenFailure value)? noTokenFailure,
    TResult Function(ExpiredToken value)? expiredToken,
    TResult Function(InvalidToken value)? invalidToken,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenExceptionsCopyWith<$Res> {
  factory $TokenExceptionsCopyWith(
          TokenExceptions value, $Res Function(TokenExceptions) then) =
      _$TokenExceptionsCopyWithImpl<$Res, TokenExceptions>;
}

/// @nodoc
class _$TokenExceptionsCopyWithImpl<$Res, $Val extends TokenExceptions>
    implements $TokenExceptionsCopyWith<$Res> {
  _$TokenExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TokenExceptionsImplCopyWith<$Res> {
  factory _$$TokenExceptionsImplCopyWith(_$TokenExceptionsImpl value,
          $Res Function(_$TokenExceptionsImpl) then) =
      __$$TokenExceptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$TokenExceptionsImplCopyWithImpl<$Res>
    extends _$TokenExceptionsCopyWithImpl<$Res, _$TokenExceptionsImpl>
    implements _$$TokenExceptionsImplCopyWith<$Res> {
  __$$TokenExceptionsImplCopyWithImpl(
      _$TokenExceptionsImpl _value, $Res Function(_$TokenExceptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TokenExceptionsImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$TokenExceptionsImpl implements _TokenExceptions {
  _$TokenExceptionsImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'TokenExceptions(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenExceptionsImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenExceptionsImplCopyWith<_$TokenExceptionsImpl> get copyWith =>
      __$$TokenExceptionsImplCopyWithImpl<_$TokenExceptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noTokenFailure,
    required TResult Function() expiredToken,
    required TResult Function() invalidToken,
    required TResult Function() unknown,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noTokenFailure,
    TResult? Function()? expiredToken,
    TResult? Function()? invalidToken,
    TResult? Function()? unknown,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noTokenFailure,
    TResult Function()? expiredToken,
    TResult Function()? invalidToken,
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
    TResult Function(_TokenExceptions value) $default, {
    required TResult Function(NoTokenFailure value) noTokenFailure,
    required TResult Function(ExpiredToken value) expiredToken,
    required TResult Function(InvalidToken value) invalidToken,
    required TResult Function(Unknown value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenExceptions value)? $default, {
    TResult? Function(NoTokenFailure value)? noTokenFailure,
    TResult? Function(ExpiredToken value)? expiredToken,
    TResult? Function(InvalidToken value)? invalidToken,
    TResult? Function(Unknown value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenExceptions value)? $default, {
    TResult Function(NoTokenFailure value)? noTokenFailure,
    TResult Function(ExpiredToken value)? expiredToken,
    TResult Function(InvalidToken value)? invalidToken,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TokenExceptions implements TokenExceptions {
  factory _TokenExceptions([final dynamic message]) = _$TokenExceptionsImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$TokenExceptionsImplCopyWith<_$TokenExceptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoTokenFailureImplCopyWith<$Res> {
  factory _$$NoTokenFailureImplCopyWith(_$NoTokenFailureImpl value,
          $Res Function(_$NoTokenFailureImpl) then) =
      __$$NoTokenFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoTokenFailureImplCopyWithImpl<$Res>
    extends _$TokenExceptionsCopyWithImpl<$Res, _$NoTokenFailureImpl>
    implements _$$NoTokenFailureImplCopyWith<$Res> {
  __$$NoTokenFailureImplCopyWithImpl(
      _$NoTokenFailureImpl _value, $Res Function(_$NoTokenFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoTokenFailureImpl implements NoTokenFailure {
  const _$NoTokenFailureImpl();

  @override
  String toString() {
    return 'TokenExceptions.noTokenFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoTokenFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noTokenFailure,
    required TResult Function() expiredToken,
    required TResult Function() invalidToken,
    required TResult Function() unknown,
  }) {
    return noTokenFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noTokenFailure,
    TResult? Function()? expiredToken,
    TResult? Function()? invalidToken,
    TResult? Function()? unknown,
  }) {
    return noTokenFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noTokenFailure,
    TResult Function()? expiredToken,
    TResult Function()? invalidToken,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noTokenFailure != null) {
      return noTokenFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenExceptions value) $default, {
    required TResult Function(NoTokenFailure value) noTokenFailure,
    required TResult Function(ExpiredToken value) expiredToken,
    required TResult Function(InvalidToken value) invalidToken,
    required TResult Function(Unknown value) unknown,
  }) {
    return noTokenFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenExceptions value)? $default, {
    TResult? Function(NoTokenFailure value)? noTokenFailure,
    TResult? Function(ExpiredToken value)? expiredToken,
    TResult? Function(InvalidToken value)? invalidToken,
    TResult? Function(Unknown value)? unknown,
  }) {
    return noTokenFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenExceptions value)? $default, {
    TResult Function(NoTokenFailure value)? noTokenFailure,
    TResult Function(ExpiredToken value)? expiredToken,
    TResult Function(InvalidToken value)? invalidToken,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noTokenFailure != null) {
      return noTokenFailure(this);
    }
    return orElse();
  }
}

abstract class NoTokenFailure implements TokenExceptions {
  const factory NoTokenFailure() = _$NoTokenFailureImpl;
}

/// @nodoc
abstract class _$$ExpiredTokenImplCopyWith<$Res> {
  factory _$$ExpiredTokenImplCopyWith(
          _$ExpiredTokenImpl value, $Res Function(_$ExpiredTokenImpl) then) =
      __$$ExpiredTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpiredTokenImplCopyWithImpl<$Res>
    extends _$TokenExceptionsCopyWithImpl<$Res, _$ExpiredTokenImpl>
    implements _$$ExpiredTokenImplCopyWith<$Res> {
  __$$ExpiredTokenImplCopyWithImpl(
      _$ExpiredTokenImpl _value, $Res Function(_$ExpiredTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpiredTokenImpl implements ExpiredToken {
  const _$ExpiredTokenImpl();

  @override
  String toString() {
    return 'TokenExceptions.expiredToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpiredTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noTokenFailure,
    required TResult Function() expiredToken,
    required TResult Function() invalidToken,
    required TResult Function() unknown,
  }) {
    return expiredToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noTokenFailure,
    TResult? Function()? expiredToken,
    TResult? Function()? invalidToken,
    TResult? Function()? unknown,
  }) {
    return expiredToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noTokenFailure,
    TResult Function()? expiredToken,
    TResult Function()? invalidToken,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (expiredToken != null) {
      return expiredToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenExceptions value) $default, {
    required TResult Function(NoTokenFailure value) noTokenFailure,
    required TResult Function(ExpiredToken value) expiredToken,
    required TResult Function(InvalidToken value) invalidToken,
    required TResult Function(Unknown value) unknown,
  }) {
    return expiredToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenExceptions value)? $default, {
    TResult? Function(NoTokenFailure value)? noTokenFailure,
    TResult? Function(ExpiredToken value)? expiredToken,
    TResult? Function(InvalidToken value)? invalidToken,
    TResult? Function(Unknown value)? unknown,
  }) {
    return expiredToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenExceptions value)? $default, {
    TResult Function(NoTokenFailure value)? noTokenFailure,
    TResult Function(ExpiredToken value)? expiredToken,
    TResult Function(InvalidToken value)? invalidToken,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (expiredToken != null) {
      return expiredToken(this);
    }
    return orElse();
  }
}

abstract class ExpiredToken implements TokenExceptions {
  const factory ExpiredToken() = _$ExpiredTokenImpl;
}

/// @nodoc
abstract class _$$InvalidTokenImplCopyWith<$Res> {
  factory _$$InvalidTokenImplCopyWith(
          _$InvalidTokenImpl value, $Res Function(_$InvalidTokenImpl) then) =
      __$$InvalidTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidTokenImplCopyWithImpl<$Res>
    extends _$TokenExceptionsCopyWithImpl<$Res, _$InvalidTokenImpl>
    implements _$$InvalidTokenImplCopyWith<$Res> {
  __$$InvalidTokenImplCopyWithImpl(
      _$InvalidTokenImpl _value, $Res Function(_$InvalidTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidTokenImpl implements InvalidToken {
  const _$InvalidTokenImpl();

  @override
  String toString() {
    return 'TokenExceptions.invalidToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noTokenFailure,
    required TResult Function() expiredToken,
    required TResult Function() invalidToken,
    required TResult Function() unknown,
  }) {
    return invalidToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noTokenFailure,
    TResult? Function()? expiredToken,
    TResult? Function()? invalidToken,
    TResult? Function()? unknown,
  }) {
    return invalidToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noTokenFailure,
    TResult Function()? expiredToken,
    TResult Function()? invalidToken,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenExceptions value) $default, {
    required TResult Function(NoTokenFailure value) noTokenFailure,
    required TResult Function(ExpiredToken value) expiredToken,
    required TResult Function(InvalidToken value) invalidToken,
    required TResult Function(Unknown value) unknown,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenExceptions value)? $default, {
    TResult? Function(NoTokenFailure value)? noTokenFailure,
    TResult? Function(ExpiredToken value)? expiredToken,
    TResult? Function(InvalidToken value)? invalidToken,
    TResult? Function(Unknown value)? unknown,
  }) {
    return invalidToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenExceptions value)? $default, {
    TResult Function(NoTokenFailure value)? noTokenFailure,
    TResult Function(ExpiredToken value)? expiredToken,
    TResult Function(InvalidToken value)? invalidToken,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class InvalidToken implements TokenExceptions {
  const factory InvalidToken() = _$InvalidTokenImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$TokenExceptionsCopyWithImpl<$Res, _$UnknownImpl>
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
    return 'TokenExceptions.unknown()';
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
    required TResult Function() noTokenFailure,
    required TResult Function() expiredToken,
    required TResult Function() invalidToken,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noTokenFailure,
    TResult? Function()? expiredToken,
    TResult? Function()? invalidToken,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noTokenFailure,
    TResult Function()? expiredToken,
    TResult Function()? invalidToken,
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
    TResult Function(_TokenExceptions value) $default, {
    required TResult Function(NoTokenFailure value) noTokenFailure,
    required TResult Function(ExpiredToken value) expiredToken,
    required TResult Function(InvalidToken value) invalidToken,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenExceptions value)? $default, {
    TResult? Function(NoTokenFailure value)? noTokenFailure,
    TResult? Function(ExpiredToken value)? expiredToken,
    TResult? Function(InvalidToken value)? invalidToken,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenExceptions value)? $default, {
    TResult Function(NoTokenFailure value)? noTokenFailure,
    TResult Function(ExpiredToken value)? expiredToken,
    TResult Function(InvalidToken value)? invalidToken,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements TokenExceptions {
  const factory Unknown() = _$UnknownImpl;
}
