// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: (json['id'] as num).toInt(),
      shop: (json['shop'] as num).toInt(),
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      unit_price: (json['unit_price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      shipping: (json['shipping'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      paid: json['paid'] as bool,
      status: json['status'] as String,
      canceled_at: json['canceled_at'] ?? null,
      delivered_at: json['delivered_at'] ?? null,
      delivery_time: json['delivery_time'] ?? null,
      total_price: (json['total_price'] as num).toInt(),
      auto_delivery: json['auto_delivery'] as bool,
      frequency: json['frequency'] ?? null,
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop': instance.shop,
      'product': instance.product,
      'unit_price': instance.unit_price,
      'quantity': instance.quantity,
      'fee': instance.fee,
      'shipping': instance.shipping,
      'discount': instance.discount,
      'paid': instance.paid,
      'status': instance.status,
      'canceled_at': instance.canceled_at,
      'delivered_at': instance.delivered_at,
      'delivery_time': instance.delivery_time,
      'total_price': instance.total_price,
      'auto_delivery': instance.auto_delivery,
      'frequency': instance.frequency,
    };
