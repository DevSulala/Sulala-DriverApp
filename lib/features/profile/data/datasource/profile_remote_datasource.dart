import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sulala_driver_app/core/models/api_response_model.dart';
import 'package:sulala_driver_app/features/auth/model/user.dart';

part 'profile_remote_datasource.g.dart';

@RestApi()
@lazySingleton
abstract class ProfileRemoteDatasource {
  @factoryMethod
  factory ProfileRemoteDatasource(Dio dio) = _ProfileRemoteDatasource;

  @factoryMethod
  @GET('/driver-profile/')
  Future<ApiResponseModel<User>> getDriverProfile();

  // @factoryMethod
  // @PATCH('/auto-delivery/{orderId}/cancel-auto-delivery/')
  // Future<void> stopAutoDelivery(@Path() int orderId);

  // @PATCH('/orders/{orderId}/cancel-order/')
  // Future<void> cancelOrder(
  //     @Path() int orderId, @Body() Map<String, dynamic> status);
  // @POST('/orders/{orderId}/re-order/')
  // Future<void> reOrder(
  //     @Path() int orderId, @Body() Map<String, dynamic> status);
}
