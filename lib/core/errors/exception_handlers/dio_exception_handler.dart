// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/server_exception_enum.dart';

@singleton
class DioExceptionsHandler {
  static ServerExceptionEnum mapToServerExceptionEnum(DioException e) {
    if (e.response != null) {
      switch (e.response!.statusCode) {
        case 400:
          return ServerExceptionEnum.badRequest;
        case 401:
        case 403:
          return ServerExceptionEnum.unauthorizedRequest;
        case 404:
          return ServerExceptionEnum.notFound;
        case 500:
          return ServerExceptionEnum.internalServerError;
        default:
          return ServerExceptionEnum.unknown;
      }
    } else {
      switch (e.type) {
        case DioExceptionType.cancel:
          return ServerExceptionEnum.requestCancelled;
        case DioExceptionType.receiveTimeout:
          return ServerExceptionEnum.receiveTimeout;
        case DioExceptionType.badCertificate:
          return ServerExceptionEnum.badCertificate;
        case DioExceptionType.sendTimeout:
          return ServerExceptionEnum.receiveTimeout;
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
          return ServerExceptionEnum.noInternetConnection;
        case DioExceptionType.badResponse:
          return ServerExceptionEnum.badResponse;
        default:
          return ServerExceptionEnum.unknown;
      }
    }
  }

  static DioException nullDataError({String? message}) => DioException(
        requestOptions: RequestOptions(),
        message: message ?? 'Null data',
        type: DioExceptionType.unknown,
      );
}
