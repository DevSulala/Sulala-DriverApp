import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/server_exception_enum.dart';
import 'package:sulala_driver_app/core/errors/exception_handlers/dio_exception_handler.dart';
import 'package:sulala_driver_app/core/errors/failure/failure.dart';
import 'package:sulala_driver_app/core/helpers/logger.dart';
import 'package:sulala_driver_app/core/models/error_model.dart';
import 'package:sulala_driver_app/core/models/unit.dart';

Future<Either<Failure, T>> apiTryCatchMethod<T>(
  Function callable, {
  String? successMessage,
  bool noData = false,
}) async {
  try {
    final data = await callable();
    if (noData) {
      return Right(unit as T);
    }
    return Right(data);
  } on DioException catch (e) {
    Logger.error(e);
    ErrorModel? error;
    if (e.response?.data["error"] != null) {
      error = ErrorModel.fromJson(e.response?.data["error"]);
    }
    return Left(Failure.serverFailure(
        DioExceptionsHandler.mapToServerExceptionEnum(e),
        error?.title.toString()));
  } catch (e) {
    Logger.error(e);
    return const Left(Failure.serverFailure(ServerExceptionEnum.unknown));
  }
}
