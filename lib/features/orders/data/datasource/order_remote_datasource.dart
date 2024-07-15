import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sulala_driver_app/core/models/api_response_model.dart';
import 'package:sulala_driver_app/core/models/paginated.dart';
import 'package:sulala_driver_app/features/orders/data/model/order_list_model.dart';

part 'order_remote_datasource.g.dart';

@RestApi()
@lazySingleton
abstract class OrderRemoteDatasource {
  @factoryMethod
  factory OrderRemoteDatasource(Dio dio) = _OrderRemoteDatasource;

  @factoryMethod
  @GET('/orders/')
  Future<ApiResponseModel<Paginated<OrderListModel>>> getCustomerOrders(
      @Query('order_by_month') String filter);
  @factoryMethod
  @factoryMethod
  @PATCH('/auto-delivery/{orderId}/cancel-auto-delivery/')
  Future<void> stopAutoDelivery(@Path() int orderId);

  @PATCH('/orders/{orderId}/cancel-order/')
  Future<void> cancelOrder(
      @Path() int orderId, @Body() Map<String, dynamic> status);
  @POST('/orders/{orderId}/re-order/')
  Future<void> reOrder(
      @Path() int orderId, @Body() Map<String, dynamic> status);
}
