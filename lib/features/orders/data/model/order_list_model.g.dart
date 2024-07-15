// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderListModelImpl _$$OrderListModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderListModelImpl(
      id: (json['id'] as num).toInt(),
      user: (json['user'] as num).toInt(),
      pickup_type: json['pickup_type'] as String,
      pickup_point: json['pickup_point'] as String,
      payment_method: (json['payment_method'] as num?)?.toInt(),
      order_total: (json['order_total'] as num).toDouble(),
      shipping: (json['shipping'] as num).toDouble(),
      status: json['status'] as String,
      schedule_delivery_start: json['schedule_delivery_start'] as String,
      schedule_delivery_end: json['schedule_delivery_end'] as String,
      ordered_at: json['ordered_at'] as String,
      discount: (json['discount'] as num).toDouble(),
      total_amount: (json['total_amount'] as num).toDouble(),
      next_delivery_date: json['next_delivery_date'] ?? null,
    );

Map<String, dynamic> _$$OrderListModelImplToJson(
        _$OrderListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'pickup_type': instance.pickup_type,
      'pickup_point': instance.pickup_point,
      'payment_method': instance.payment_method,
      'order_total': instance.order_total,
      'shipping': instance.shipping,
      'status': instance.status,
      'schedule_delivery_start': instance.schedule_delivery_start,
      'schedule_delivery_end': instance.schedule_delivery_end,
      'ordered_at': instance.ordered_at,
      'discount': instance.discount,
      'total_amount': instance.total_amount,
      'next_delivery_date': instance.next_delivery_date,
    };
