// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_exceptions.freezed.dart';

@freezed
abstract class ServerExceptions with _$ServerExceptions {
  factory ServerExceptions([dynamic message]) = _ServerExceptions;
  const factory ServerExceptions.requestCancelled() = RequestCancelled;
  const factory ServerExceptions.unauthorisedRequest() = UnauthorisedRequest;
  const factory ServerExceptions.badRequest([dynamic message]) = BadRequest;
  const factory ServerExceptions.notFound() = NotFound;
  const factory ServerExceptions.internalServerError() = InternalServerError;
  const factory ServerExceptions.receiveTimeout() = ReceiveTimeout;
  const factory ServerExceptions.sendTimeout() = SendTimeout;
  const factory ServerExceptions.noInternetConnection() = NoInternetConnection;
  const factory ServerExceptions.badResponse([dynamic message]) = BadResponse;
  const factory ServerExceptions.badCertificate() = BadCertificate;
  const factory ServerExceptions.unknown([dynamic message]) = Unknown;
}
