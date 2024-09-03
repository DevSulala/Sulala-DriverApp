enum ServerExceptionEnum {
  serverError,
  invalidData,
  unauthorizedRequest,
  requestCancelled,
  forbidden,
  notFound,
  conflict,
  badRequest,
  badResponse,
  badCertificate,
  requestTimeout,
  receiveTimeout,
  serviceUnavailable,
  internalServerError,
  gatewayTimeout,
  unknown,
  noInternetConnection,
  noData,
}

extension ServerExceptioEnumExtension on ServerExceptionEnum {
  String get message {
    switch (this) {
      case ServerExceptionEnum.serverError:
        return 'Server Error';
      case ServerExceptionEnum.invalidData:
        return 'Invalid Data';
      case ServerExceptionEnum.unauthorizedRequest:
        return 'Unauthorized Request';
      case ServerExceptionEnum.internalServerError:
        return 'Internal Server Error';
      case ServerExceptionEnum.forbidden:
        return 'Forbidden';
      case ServerExceptionEnum.notFound:
        return 'Not Found';
      case ServerExceptionEnum.conflict:
        return 'Conflict';
      case ServerExceptionEnum.badRequest:
        return 'Bad Request';
      case ServerExceptionEnum.badCertificate:
        return 'Bad Certificate';
      case ServerExceptionEnum.requestCancelled:
        return 'Request Cancelled';

      case ServerExceptionEnum.receiveTimeout:
        return 'Recieve Timeout';

      case ServerExceptionEnum.badResponse:
        return 'Bad Response';
      case ServerExceptionEnum.requestTimeout:
        return 'Request Timeout';
      case ServerExceptionEnum.serviceUnavailable:
        return 'Service Unavailable';
      case ServerExceptionEnum.gatewayTimeout:
        return 'Gateway Timeout';
      case ServerExceptionEnum.unknown:
        return 'Unknown';
      case ServerExceptionEnum.noInternetConnection:
        return 'No Internet Connection';
      case ServerExceptionEnum.noData:
        return 'No Data';
      default:
        return 'Server Error';
    }
  }
}

