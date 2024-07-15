import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/server_exception_enum.dart';
import 'package:sulala_driver_app/core/errors/exception_handlers/dio_exception_handler.dart';
import 'package:sulala_driver_app/core/errors/failure/failure.dart';
import 'package:sulala_driver_app/core/helpers/logger.dart';
import 'package:sulala_driver_app/core/models/api_response_model.dart';
import 'package:sulala_driver_app/core/models/unit.dart';

Future<Either<Failure, T>> apiResTryCatchMethod<T>(
  Future<ApiResponseModel<T>> Function() callable, {
  String? successMessage,
  bool noData = false,
}) async {
  try {
    final res = await callable();
    if (!res.success) {
      return Left(
          Failure.serverFailure(ServerExceptionEnum.unknown, res.error?.title));
    }
    if (noData) {
      return Right(unit as T);
    }
    if (res.data == null) {
      return const Left(
          Failure.serverFailure(ServerExceptionEnum.noData, "No data"));
    }
    return Right(res.data as T);
  } on DioException catch (e) {
    Logger.error(e);
    return Left(Failure.serverFailure(
        DioExceptionsHandler.mapToServerExceptionEnum(e),
        e.response?.data["message"]?.toString()));
  } catch (e) {
    Logger.error(e);
    return const Left(Failure.serverFailure(ServerExceptionEnum.unknown));
  }
}
