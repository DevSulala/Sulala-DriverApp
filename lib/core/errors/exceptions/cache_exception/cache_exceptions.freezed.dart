// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noData,
    required TResult Function() cacheFailure,
    required TResult Function(dynamic message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noData,
    TResult? Function()? cacheFailure,
    TResult? Function(dynamic message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noData,
    TResult Function()? cacheFailure,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CacheExceptions value) $default, {
    required TResult Function(NoData value) noData,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CacheExceptions value)? $default, {
    TResult? Function(NoData value)? noData,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CacheExceptions value)? $default, {
    TResult Function(NoData value)? noData,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheExceptionsCopyWith<$Res> {
  factory $CacheExceptionsCopyWith(
          CacheExceptions value, $Res Function(CacheExceptions) then) =
      _$CacheExceptionsCopyWithImpl<$Res, CacheExceptions>;
}

/// @nodoc
class _$CacheExceptionsCopyWithImpl<$Res, $Val extends CacheExceptions>
    implements $CacheExceptionsCopyWith<$Res> {
  _$CacheExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CacheExceptionsImplCopyWith<$Res> {
  factory _$$CacheExceptionsImplCopyWith(_$CacheExceptionsImpl value,
          $Res Function(_$CacheExceptionsImpl) then) =
      __$$CacheExceptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$CacheExceptionsImplCopyWithImpl<$Res>
    extends _$CacheExceptionsCopyWithImpl<$Res, _$CacheExceptionsImpl>
    implements _$$CacheExceptionsImplCopyWith<$Res> {
  __$$CacheExceptionsImplCopyWithImpl(
      _$CacheExceptionsImpl _value, $Res Function(_$CacheExceptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CacheExceptionsImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CacheExceptionsImpl implements _CacheExceptions {
  _$CacheExceptionsImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'CacheExceptions(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheExceptionsImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExceptionsImplCopyWith<_$CacheExceptionsImpl> get copyWith =>
      __$$CacheExceptionsImplCopyWithImpl<_$CacheExceptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noData,
    required TResult Function() cacheFailure,
    required TResult Function(dynamic message) unknown,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noData,
    TResult? Function()? cacheFailure,
    TResult? Function(dynamic message)? unknown,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noData,
    TResult Function()? cacheFailure,
    TResult Function(dynamic message)? unknown,
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
    TResult Function(_CacheExceptions value) $default, {
    required TResult Function(NoData value) noData,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CacheExceptions value)? $default, {
    TResult? Function(NoData value)? noData,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CacheExceptions value)? $default, {
    TResult Function(NoData value)? noData,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CacheExceptions implements CacheExceptions {
  factory _CacheExceptions([final dynamic message]) = _$CacheExceptionsImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$CacheExceptionsImplCopyWith<_$CacheExceptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$CacheExceptionsCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoDataImpl implements NoData {
  const _$NoDataImpl();

  @override
  String toString() {
    return 'CacheExceptions.noData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noData,
    required TResult Function() cacheFailure,
    required TResult Function(dynamic message) unknown,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noData,
    TResult? Function()? cacheFailure,
    TResult? Function(dynamic message)? unknown,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noData,
    TResult Function()? cacheFailure,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CacheExceptions value) $default, {
    required TResult Function(NoData value) noData,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CacheExceptions value)? $default, {
    TResult? Function(NoData value)? noData,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CacheExceptions value)? $default, {
    TResult Function(NoData value)? noData,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements CacheExceptions {
  const factory NoData() = _$NoDataImpl;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$CacheExceptionsCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl();

  @override
  String toString() {
    return 'CacheExceptions.cacheFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noData,
    required TResult Function() cacheFailure,
    required TResult Function(dynamic message) unknown,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noData,
    TResult? Function()? cacheFailure,
    TResult? Function(dynamic message)? unknown,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noData,
    TResult Function()? cacheFailure,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CacheExceptions value) $default, {
    required TResult Function(NoData value) noData,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CacheExceptions value)? $default, {
    TResult? Function(NoData value)? noData,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CacheExceptions value)? $default, {
    TResult Function(NoData value)? noData,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements CacheExceptions {
  const factory CacheFailure() = _$CacheFailureImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$CacheExceptionsCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'CacheExceptions.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() noData,
    required TResult Function() cacheFailure,
    required TResult Function(dynamic message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? noData,
    TResult? Function()? cacheFailure,
    TResult? Function(dynamic message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? noData,
    TResult Function()? cacheFailure,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CacheExceptions value) $default, {
    required TResult Function(NoData value) noData,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CacheExceptions value)? $default, {
    TResult? Function(NoData value)? noData,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CacheExceptions value)? $default, {
    TResult Function(NoData value)? noData,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements CacheExceptions {
  const factory Unknown([final dynamic message]) = _$UnknownImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
