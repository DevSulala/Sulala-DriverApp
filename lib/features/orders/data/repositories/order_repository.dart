import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:sulala_driver_app/core/errors/failure/failure.dart';
import 'package:sulala_driver_app/core/helpers/api_try_catch_method.dart';
import 'package:sulala_driver_app/core/models/paginated.dart';
import 'package:sulala_driver_app/core/models/unit.dart';
import 'package:sulala_driver_app/features/orders/data/datasource/order_remote_datasource.dart';
import 'package:sulala_driver_app/features/orders/data/model/order_list_model.dart';

import '../../../../core/models/api_response_model.dart';

@lazySingleton
class OrderRepository {
  final OrderRemoteDatasource _dataSource;

  OrderRepository(this._dataSource);

  Future<Either<Failure, ApiResponseModel<Paginated<OrderListModel>>>>
      getCustomerOrders(String filter) async {
    return apiTryCatchMethod<ApiResponseModel<Paginated<OrderListModel>>>(
      () async => await _dataSource.getCustomerOrders(filter),
    );
  }

  Future<Either<Failure, Unit>> stopAutoDelivery(int orderId) async {
    return apiTryCatchMethod<Unit>(
      () async => await _dataSource.stopAutoDelivery(orderId),
      noData: true,
    );
  }

  Future<Either<Failure, Unit>> cancelOrder(
      int orderId, Map<String, dynamic> status) async {
    return apiTryCatchMethod<Unit>(
      () async => await _dataSource.cancelOrder(orderId, status),
      noData: true,
    );
  }

  Future<Either<Failure, Unit>> reOrder(
      int orderId, Map<String, dynamic> status) async {
    return apiTryCatchMethod<Unit>(
      () async => await _dataSource.reOrder(orderId, status),
      noData: true,
    );
  }
}
