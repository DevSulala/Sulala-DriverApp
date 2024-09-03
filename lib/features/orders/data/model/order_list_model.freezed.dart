// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderListModel _$OrderListModelFromJson(Map<String, dynamic> json) {
  return _OrderListModel.fromJson(json);
}

/// @nodoc
mixin _$OrderListModel {
  int get id => throw _privateConstructorUsedError;
  int get user => throw _privateConstructorUsedError;
  String get pickup_type => throw _privateConstructorUsedError;
  String get pickup_point => throw _privateConstructorUsedError;
  int? get payment_method => throw _privateConstructorUsedError;
  double get order_total => throw _privateConstructorUsedError;
  double get shipping => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get schedule_delivery_start => throw _privateConstructorUsedError;
  String get schedule_delivery_end => throw _privateConstructorUsedError;
  String get ordered_at => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  double get total_amount => throw _privateConstructorUsedError;
  dynamic get next_delivery_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderListModelCopyWith<OrderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListModelCopyWith<$Res> {
  factory $OrderListModelCopyWith(
          OrderListModel value, $Res Function(OrderListModel) then) =
      _$OrderListModelCopyWithImpl<$Res, OrderListModel>;
  @useResult
  $Res call(
      {int id,
      int user,
      String pickup_type,
      String pickup_point,
      int? payment_method,
      double order_total,
      double shipping,
      String status,
      String schedule_delivery_start,
      String schedule_delivery_end,
      String ordered_at,
      double discount,
      double total_amount,
      dynamic next_delivery_date});
}

/// @nodoc
class _$OrderListModelCopyWithImpl<$Res, $Val extends OrderListModel>
    implements $OrderListModelCopyWith<$Res> {
  _$OrderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? pickup_type = null,
    Object? pickup_point = null,
    Object? payment_method = freezed,
    Object? order_total = null,
    Object? shipping = null,
    Object? status = null,
    Object? schedule_delivery_start = null,
    Object? schedule_delivery_end = null,
    Object? ordered_at = null,
    Object? discount = null,
    Object? total_amount = null,
    Object? next_delivery_date = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      pickup_type: null == pickup_type
          ? _value.pickup_type
          : pickup_type // ignore: cast_nullable_to_non_nullable
              as String,
      pickup_point: null == pickup_point
          ? _value.pickup_point
          : pickup_point // ignore: cast_nullable_to_non_nullable
              as String,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as int?,
      order_total: null == order_total
          ? _value.order_total
          : order_total // ignore: cast_nullable_to_non_nullable
              as double,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      schedule_delivery_start: null == schedule_delivery_start
          ? _value.schedule_delivery_start
          : schedule_delivery_start // ignore: cast_nullable_to_non_nullable
              as String,
      schedule_delivery_end: null == schedule_delivery_end
          ? _value.schedule_delivery_end
          : schedule_delivery_end // ignore: cast_nullable_to_non_nullable
              as String,
      ordered_at: null == ordered_at
          ? _value.ordered_at
          : ordered_at // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as double,
      next_delivery_date: freezed == next_delivery_date
          ? _value.next_delivery_date
          : next_delivery_date // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderListModelImplCopyWith<$Res>
    implements $OrderListModelCopyWith<$Res> {
  factory _$$OrderListModelImplCopyWith(_$OrderListModelImpl value,
          $Res Function(_$OrderListModelImpl) then) =
      __$$OrderListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int user,
      String pickup_type,
      String pickup_point,
      int? payment_method,
      double order_total,
      double shipping,
      String status,
      String schedule_delivery_start,
      String schedule_delivery_end,
      String ordered_at,
      double discount,
      double total_amount,
      dynamic next_delivery_date});
}

/// @nodoc
class __$$OrderListModelImplCopyWithImpl<$Res>
    extends _$OrderListModelCopyWithImpl<$Res, _$OrderListModelImpl>
    implements _$$OrderListModelImplCopyWith<$Res> {
  __$$OrderListModelImplCopyWithImpl(
      _$OrderListModelImpl _value, $Res Function(_$OrderListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? pickup_type = null,
    Object? pickup_point = null,
    Object? payment_method = freezed,
    Object? order_total = null,
    Object? shipping = null,
    Object? status = null,
    Object? schedule_delivery_start = null,
    Object? schedule_delivery_end = null,
    Object? ordered_at = null,
    Object? discount = null,
    Object? total_amount = null,
    Object? next_delivery_date = freezed,
  }) {
    return _then(_$OrderListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      pickup_type: null == pickup_type
          ? _value.pickup_type
          : pickup_type // ignore: cast_nullable_to_non_nullable
              as String,
      pickup_point: null == pickup_point
          ? _value.pickup_point
          : pickup_point // ignore: cast_nullable_to_non_nullable
              as String,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as int?,
      order_total: null == order_total
          ? _value.order_total
          : order_total // ignore: cast_nullable_to_non_nullable
              as double,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      schedule_delivery_start: null == schedule_delivery_start
          ? _value.schedule_delivery_start
          : schedule_delivery_start // ignore: cast_nullable_to_non_nullable
              as String,
      schedule_delivery_end: null == schedule_delivery_end
          ? _value.schedule_delivery_end
          : schedule_delivery_end // ignore: cast_nullable_to_non_nullable
              as String,
      ordered_at: null == ordered_at
          ? _value.ordered_at
          : ordered_at // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as double,
      next_delivery_date: freezed == next_delivery_date
          ? _value.next_delivery_date
          : next_delivery_date // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListModelImpl implements _OrderListModel {
  const _$OrderListModelImpl(
      {required this.id,
      required this.user,
      required this.pickup_type,
      required this.pickup_point,
      required this.payment_method,
      required this.order_total,
      required this.shipping,
      required this.status,
      required this.schedule_delivery_start,
      required this.schedule_delivery_end,
      required this.ordered_at,
      required this.discount,
      required this.total_amount,
      this.next_delivery_date = null});

  factory _$OrderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListModelImplFromJson(json);

  @override
  final int id;
  @override
  final int user;
  @override
  final String pickup_type;
  @override
  final String pickup_point;
  @override
  final int? payment_method;
  @override
  final double order_total;
  @override
  final double shipping;
  @override
  final String status;
  @override
  final String schedule_delivery_start;
  @override
  final String schedule_delivery_end;
  @override
  final String ordered_at;
  @override
  final double discount;
  @override
  final double total_amount;
  @override
  @JsonKey()
  final dynamic next_delivery_date;

  @override
  String toString() {
    return 'OrderListModel(id: $id, user: $user, pickup_type: $pickup_type, pickup_point: $pickup_point, payment_method: $payment_method, order_total: $order_total, shipping: $shipping, status: $status, schedule_delivery_start: $schedule_delivery_start, schedule_delivery_end: $schedule_delivery_end, ordered_at: $ordered_at, discount: $discount, total_amount: $total_amount, next_delivery_date: $next_delivery_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.pickup_type, pickup_type) ||
                other.pickup_type == pickup_type) &&
            (identical(other.pickup_point, pickup_point) ||
                other.pickup_point == pickup_point) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            (identical(other.order_total, order_total) ||
                other.order_total == order_total) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.schedule_delivery_start, schedule_delivery_start) ||
                other.schedule_delivery_start == schedule_delivery_start) &&
            (identical(other.schedule_delivery_end, schedule_delivery_end) ||
                other.schedule_delivery_end == schedule_delivery_end) &&
            (identical(other.ordered_at, ordered_at) ||
                other.ordered_at == ordered_at) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            const DeepCollectionEquality()
                .equals(other.next_delivery_date, next_delivery_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      pickup_type,
      pickup_point,
      payment_method,
      order_total,
      shipping,
      status,
      schedule_delivery_start,
      schedule_delivery_end,
      ordered_at,
      discount,
      total_amount,
      const DeepCollectionEquality().hash(next_delivery_date));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListModelImplCopyWith<_$OrderListModelImpl> get copyWith =>
      __$$OrderListModelImplCopyWithImpl<_$OrderListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListModelImplToJson(
      this,
    );
  }
}

abstract class _OrderListModel implements OrderListModel {
  const factory _OrderListModel(
      {required final int id,
      required final int user,
      required final String pickup_type,
      required final String pickup_point,
      required final int? payment_method,
      required final double order_total,
      required final double shipping,
      required final String status,
      required final String schedule_delivery_start,
      required final String schedule_delivery_end,
      required final String ordered_at,
      required final double discount,
      required final double total_amount,
      final dynamic next_delivery_date}) = _$OrderListModelImpl;

  factory _OrderListModel.fromJson(Map<String, dynamic> json) =
      _$OrderListModelImpl.fromJson;

  @override
  int get id;
  @override
  int get user;
  @override
  String get pickup_type;
  @override
  String get pickup_point;
  @override
  int? get payment_method;
  @override
  double get order_total;
  @override
  double get shipping;
  @override
  String get status;
  @override
  String get schedule_delivery_start;
  @override
  String get schedule_delivery_end;
  @override
  String get ordered_at;
  @override
  double get discount;
  @override
  double get total_amount;
  @override
  dynamic get next_delivery_date;
  @override
  @JsonKey(ignore: true)
  _$$OrderListModelImplCopyWith<_$OrderListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
