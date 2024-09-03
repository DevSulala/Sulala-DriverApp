import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:sulala_driver_app/core/errors/failure/failure.dart';
import 'package:sulala_driver_app/core/helpers/api_try_catch_method.dart';
import 'package:sulala_driver_app/features/auth/model/user.dart';
import 'package:sulala_driver_app/features/profile/data/datasource/profile_remote_datasource.dart';

import '../../../../core/models/api_response_model.dart';

@lazySingleton
class ProfileRepository {
  final ProfileRemoteDatasource _dataSource;

  ProfileRepository(this._dataSource);

  Future<Either<Failure, ApiResponseModel<User>>> getDriverProfile() async {
    return apiTryCatchMethod<ApiResponseModel<User>>(
      () async => await _dataSource.getDriverProfile(),
    );
  }

  // Future<Either<Failure, Unit>> reOrder(
  //     int orderId, Map<String, dynamic> status) async {
  //   return apiTryCatchMethod<Unit>(
  //     () async => await _dataSource.reOrder(orderId, status),
  //     noData: true,
  //   );
  // }
}
