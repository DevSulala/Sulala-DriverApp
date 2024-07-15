import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_list_model.freezed.dart';
part 'order_list_model.g.dart';

@freezed
class OrderListModel with _$OrderListModel {
  const factory OrderListModel({
    required int id,
    required int user,
    required String pickup_type,
    required String pickup_point,
    required int? payment_method,
    required double order_total,
    required double shipping,
    required String status,
    required String schedule_delivery_start,
    required String schedule_delivery_end,
    required String ordered_at,
    required double discount,
    required double total_amount,
    @Default(null) dynamic next_delivery_date,
    // required List<OrderItem> order_items,
  }) = _OrderListModel;

  factory OrderListModel.fromJson(Map<String, dynamic> json) =>
      _$OrderListModelFromJson(json);
}
