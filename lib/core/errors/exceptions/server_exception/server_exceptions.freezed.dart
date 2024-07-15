// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServerExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerExceptionsCopyWith<$Res> {
  factory $ServerExceptionsCopyWith(
          ServerExceptions value, $Res Function(ServerExceptions) then) =
      _$ServerExceptionsCopyWithImpl<$Res, ServerExceptions>;
}

/// @nodoc
class _$ServerExceptionsCopyWithImpl<$Res, $Val extends ServerExceptions>
    implements $ServerExceptionsCopyWith<$Res> {
  _$ServerExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerExceptionsImplCopyWith<$Res> {
  factory _$$ServerExceptionsImplCopyWith(_$ServerExceptionsImpl value,
          $Res Function(_$ServerExceptionsImpl) then) =
      __$$ServerExceptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$ServerExceptionsImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$ServerExceptionsImpl>
    implements _$$ServerExceptionsImplCopyWith<$Res> {
  __$$ServerExceptionsImplCopyWithImpl(_$ServerExceptionsImpl _value,
      $Res Function(_$ServerExceptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerExceptionsImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ServerExceptionsImpl implements _ServerExceptions {
  _$ServerExceptionsImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'ServerExceptions(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionsImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionsImplCopyWith<_$ServerExceptionsImpl> get copyWith =>
      __$$ServerExceptionsImplCopyWithImpl<_$ServerExceptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
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
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ServerExceptions implements ServerExceptions {
  factory _ServerExceptions([final dynamic message]) = _$ServerExceptionsImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$ServerExceptionsImplCopyWith<_$ServerExceptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledImplCopyWith<$Res> {
  factory _$$RequestCancelledImplCopyWith(_$RequestCancelledImpl value,
          $Res Function(_$RequestCancelledImpl) then) =
      __$$RequestCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCancelledImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$RequestCancelledImpl>
    implements _$$RequestCancelledImplCopyWith<$Res> {
  __$$RequestCancelledImplCopyWithImpl(_$RequestCancelledImpl _value,
      $Res Function(_$RequestCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestCancelledImpl implements RequestCancelled {
  const _$RequestCancelledImpl();

  @override
  String toString() {
    return 'ServerExceptions.requestCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled implements ServerExceptions {
  const factory RequestCancelled() = _$RequestCancelledImpl;
}

/// @nodoc
abstract class _$$UnauthorisedRequestImplCopyWith<$Res> {
  factory _$$UnauthorisedRequestImplCopyWith(_$UnauthorisedRequestImpl value,
          $Res Function(_$UnauthorisedRequestImpl) then) =
      __$$UnauthorisedRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorisedRequestImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$UnauthorisedRequestImpl>
    implements _$$UnauthorisedRequestImplCopyWith<$Res> {
  __$$UnauthorisedRequestImplCopyWithImpl(_$UnauthorisedRequestImpl _value,
      $Res Function(_$UnauthorisedRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorisedRequestImpl implements UnauthorisedRequest {
  const _$UnauthorisedRequestImpl();

  @override
  String toString() {
    return 'ServerExceptions.unauthorisedRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorisedRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return unauthorisedRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return unauthorisedRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorisedRequest != null) {
      return unauthorisedRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return unauthorisedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unauthorisedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorisedRequest != null) {
      return unauthorisedRequest(this);
    }
    return orElse();
  }
}

abstract class UnauthorisedRequest implements ServerExceptions {
  const factory UnauthorisedRequest() = _$UnauthorisedRequestImpl;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadRequestImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements BadRequest {
  const _$BadRequestImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'ServerExceptions.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ServerExceptions {
  const factory BadRequest([final dynamic message]) = _$BadRequestImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'ServerExceptions.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements ServerExceptions {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(_$InternalServerErrorImpl value,
          $Res Function(_$InternalServerErrorImpl) then) =
      __$$InternalServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(_$InternalServerErrorImpl _value,
      $Res Function(_$InternalServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InternalServerErrorImpl implements InternalServerError {
  const _$InternalServerErrorImpl();

  @override
  String toString() {
    return 'ServerExceptions.internalServerError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return internalServerError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements ServerExceptions {
  const factory InternalServerError() = _$InternalServerErrorImpl;
}

/// @nodoc
abstract class _$$ReceiveTimeoutImplCopyWith<$Res> {
  factory _$$ReceiveTimeoutImplCopyWith(_$ReceiveTimeoutImpl value,
          $Res Function(_$ReceiveTimeoutImpl) then) =
      __$$ReceiveTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveTimeoutImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$ReceiveTimeoutImpl>
    implements _$$ReceiveTimeoutImplCopyWith<$Res> {
  __$$ReceiveTimeoutImplCopyWithImpl(
      _$ReceiveTimeoutImpl _value, $Res Function(_$ReceiveTimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReceiveTimeoutImpl implements ReceiveTimeout {
  const _$ReceiveTimeoutImpl();

  @override
  String toString() {
    return 'ServerExceptions.receiveTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReceiveTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return receiveTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return receiveTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class ReceiveTimeout implements ServerExceptions {
  const factory ReceiveTimeout() = _$ReceiveTimeoutImpl;
}

/// @nodoc
abstract class _$$SendTimeoutImplCopyWith<$Res> {
  factory _$$SendTimeoutImplCopyWith(
          _$SendTimeoutImpl value, $Res Function(_$SendTimeoutImpl) then) =
      __$$SendTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendTimeoutImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$SendTimeoutImpl>
    implements _$$SendTimeoutImplCopyWith<$Res> {
  __$$SendTimeoutImplCopyWithImpl(
      _$SendTimeoutImpl _value, $Res Function(_$SendTimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendTimeoutImpl implements SendTimeout {
  const _$SendTimeoutImpl();

  @override
  String toString() {
    return 'ServerExceptions.sendTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeout implements ServerExceptions {
  const factory SendTimeout() = _$SendTimeoutImpl;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(_$NoInternetConnectionImpl _value,
      $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetConnectionImpl implements NoInternetConnection {
  const _$NoInternetConnectionImpl();

  @override
  String toString() {
    return 'ServerExceptions.noInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements ServerExceptions {
  const factory NoInternetConnection() = _$NoInternetConnectionImpl;
}

/// @nodoc
abstract class _$$BadResponseImplCopyWith<$Res> {
  factory _$$BadResponseImplCopyWith(
          _$BadResponseImpl value, $Res Function(_$BadResponseImpl) then) =
      __$$BadResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$BadResponseImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$BadResponseImpl>
    implements _$$BadResponseImplCopyWith<$Res> {
  __$$BadResponseImplCopyWithImpl(
      _$BadResponseImpl _value, $Res Function(_$BadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadResponseImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BadResponseImpl implements BadResponse {
  const _$BadResponseImpl([this.message]);

  @override
  final dynamic message;

  @override
  String toString() {
    return 'ServerExceptions.badResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadResponseImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadResponseImplCopyWith<_$BadResponseImpl> get copyWith =>
      __$$BadResponseImplCopyWithImpl<_$BadResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return badResponse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return badResponse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class BadResponse implements ServerExceptions {
  const factory BadResponse([final dynamic message]) = _$BadResponseImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$BadResponseImplCopyWith<_$BadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadCertificateImplCopyWith<$Res> {
  factory _$$BadCertificateImplCopyWith(_$BadCertificateImpl value,
          $Res Function(_$BadCertificateImpl) then) =
      __$$BadCertificateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadCertificateImplCopyWithImpl<$Res>
    extends _$ServerExceptionsCopyWithImpl<$Res, _$BadCertificateImpl>
    implements _$$BadCertificateImplCopyWith<$Res> {
  __$$BadCertificateImplCopyWithImpl(
      _$BadCertificateImpl _value, $Res Function(_$BadCertificateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadCertificateImpl implements BadCertificate {
  const _$BadCertificateImpl();

  @override
  String toString() {
    return 'ServerExceptions.badCertificate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadCertificateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic message) $default, {
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return badCertificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return badCertificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return badCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(this);
    }
    return orElse();
  }
}

abstract class BadCertificate implements ServerExceptions {
  const factory BadCertificate() = _$BadCertificateImpl;
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
    extends _$ServerExceptionsCopyWithImpl<$Res, _$UnknownImpl>
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
    return 'ServerExceptions.unknown(message: $message)';
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
    required TResult Function() requestCancelled,
    required TResult Function() unauthorisedRequest,
    required TResult Function(dynamic message) badRequest,
    required TResult Function() notFound,
    required TResult Function() internalServerError,
    required TResult Function() receiveTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(dynamic message) badResponse,
    required TResult Function() badCertificate,
    required TResult Function(dynamic message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic message)? $default, {
    TResult? Function()? requestCancelled,
    TResult? Function()? unauthorisedRequest,
    TResult? Function(dynamic message)? badRequest,
    TResult? Function()? notFound,
    TResult? Function()? internalServerError,
    TResult? Function()? receiveTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(dynamic message)? badResponse,
    TResult? Function()? badCertificate,
    TResult? Function(dynamic message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic message)? $default, {
    TResult Function()? requestCancelled,
    TResult Function()? unauthorisedRequest,
    TResult Function(dynamic message)? badRequest,
    TResult Function()? notFound,
    TResult Function()? internalServerError,
    TResult Function()? receiveTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(dynamic message)? badResponse,
    TResult Function()? badCertificate,
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
    TResult Function(_ServerExceptions value) $default, {
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(BadCertificate value) badCertificate,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerExceptions value)? $default, {
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(ReceiveTimeout value)? receiveTimeout,
    TResult? Function(SendTimeout value)? sendTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(BadCertificate value)? badCertificate,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerExceptions value)? $default, {
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(BadCertificate value)? badCertificate,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements ServerExceptions {
  const factory Unknown([final dynamic message]) = _$UnknownImpl;

  dynamic get message;
  @JsonKey(ignore: true)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
