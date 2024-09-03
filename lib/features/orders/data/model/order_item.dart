import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulala_driver_app/features/orders/data/model/product_model.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required int id,
    required int shop,
    required ProductModel product,
    required double unit_price,
    required int quantity,
    required int fee,
    required int shipping,
    required int discount,
    required bool paid,
    required String status,
    @Default(null) dynamic canceled_at,
    @Default(null) dynamic delivered_at,
    @Default(null) dynamic delivery_time,
    required int total_price,
    required bool auto_delivery,
    @Default(null) dynamic frequency,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
