// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int get id => throw _privateConstructorUsedError;
  int get shop => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;
  double get unit_price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get fee => throw _privateConstructorUsedError;
  int get shipping => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  bool get paid => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  dynamic get canceled_at => throw _privateConstructorUsedError;
  dynamic get delivered_at => throw _privateConstructorUsedError;
  dynamic get delivery_time => throw _privateConstructorUsedError;
  int get total_price => throw _privateConstructorUsedError;
  bool get auto_delivery => throw _privateConstructorUsedError;
  dynamic get frequency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int id,
      int shop,
      ProductModel product,
      double unit_price,
      int quantity,
      int fee,
      int shipping,
      int discount,
      bool paid,
      String status,
      dynamic canceled_at,
      dynamic delivered_at,
      dynamic delivery_time,
      int total_price,
      bool auto_delivery,
      dynamic frequency});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = null,
    Object? product = null,
    Object? unit_price = null,
    Object? quantity = null,
    Object? fee = null,
    Object? shipping = null,
    Object? discount = null,
    Object? paid = null,
    Object? status = null,
    Object? canceled_at = freezed,
    Object? delivered_at = freezed,
    Object? delivery_time = freezed,
    Object? total_price = null,
    Object? auto_delivery = null,
    Object? frequency = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      unit_price: null == unit_price
          ? _value.unit_price
          : unit_price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      canceled_at: freezed == canceled_at
          ? _value.canceled_at
          : canceled_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      delivered_at: freezed == delivered_at
          ? _value.delivered_at
          : delivered_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int,
      auto_delivery: null == auto_delivery
          ? _value.auto_delivery
          : auto_delivery // ignore: cast_nullable_to_non_nullable
              as bool,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int shop,
      ProductModel product,
      double unit_price,
      int quantity,
      int fee,
      int shipping,
      int discount,
      bool paid,
      String status,
      dynamic canceled_at,
      dynamic delivered_at,
      dynamic delivery_time,
      int total_price,
      bool auto_delivery,
      dynamic frequency});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = null,
    Object? product = null,
    Object? unit_price = null,
    Object? quantity = null,
    Object? fee = null,
    Object? shipping = null,
    Object? discount = null,
    Object? paid = null,
    Object? status = null,
    Object? canceled_at = freezed,
    Object? delivered_at = freezed,
    Object? delivery_time = freezed,
    Object? total_price = null,
    Object? auto_delivery = null,
    Object? frequency = freezed,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      unit_price: null == unit_price
          ? _value.unit_price
          : unit_price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      canceled_at: freezed == canceled_at
          ? _value.canceled_at
          : canceled_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      delivered_at: freezed == delivered_at
          ? _value.delivered_at
          : delivered_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int,
      auto_delivery: null == auto_delivery
          ? _value.auto_delivery
          : auto_delivery // ignore: cast_nullable_to_non_nullable
              as bool,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.id,
      required this.shop,
      required this.product,
      required this.unit_price,
      required this.quantity,
      required this.fee,
      required this.shipping,
      required this.discount,
      required this.paid,
      required this.status,
      this.canceled_at = null,
      this.delivered_at = null,
      this.delivery_time = null,
      required this.total_price,
      required this.auto_delivery,
      this.frequency = null});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final int id;
  @override
  final int shop;
  @override
  final ProductModel product;
  @override
  final double unit_price;
  @override
  final int quantity;
  @override
  final int fee;
  @override
  final int shipping;
  @override
  final int discount;
  @override
  final bool paid;
  @override
  final String status;
  @override
  @JsonKey()
  final dynamic canceled_at;
  @override
  @JsonKey()
  final dynamic delivered_at;
  @override
  @JsonKey()
  final dynamic delivery_time;
  @override
  final int total_price;
  @override
  final bool auto_delivery;
  @override
  @JsonKey()
  final dynamic frequency;

  @override
  String toString() {
    return 'OrderItem(id: $id, shop: $shop, product: $product, unit_price: $unit_price, quantity: $quantity, fee: $fee, shipping: $shipping, discount: $discount, paid: $paid, status: $status, canceled_at: $canceled_at, delivered_at: $delivered_at, delivery_time: $delivery_time, total_price: $total_price, auto_delivery: $auto_delivery, frequency: $frequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.unit_price, unit_price) ||
                other.unit_price == unit_price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.canceled_at, canceled_at) &&
            const DeepCollectionEquality()
                .equals(other.delivered_at, delivered_at) &&
            const DeepCollectionEquality()
                .equals(other.delivery_time, delivery_time) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.auto_delivery, auto_delivery) ||
                other.auto_delivery == auto_delivery) &&
            const DeepCollectionEquality().equals(other.frequency, frequency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      shop,
      product,
      unit_price,
      quantity,
      fee,
      shipping,
      discount,
      paid,
      status,
      const DeepCollectionEquality().hash(canceled_at),
      const DeepCollectionEquality().hash(delivered_at),
      const DeepCollectionEquality().hash(delivery_time),
      total_price,
      auto_delivery,
      const DeepCollectionEquality().hash(frequency));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final int id,
      required final int shop,
      required final ProductModel product,
      required final double unit_price,
      required final int quantity,
      required final int fee,
      required final int shipping,
      required final int discount,
      required final bool paid,
      required final String status,
      final dynamic canceled_at,
      final dynamic delivered_at,
      final dynamic delivery_time,
      required final int total_price,
      required final bool auto_delivery,
      final dynamic frequency}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  int get id;
  @override
  int get shop;
  @override
  ProductModel get product;
  @override
  double get unit_price;
  @override
  int get quantity;
  @override
  int get fee;
  @override
  int get shipping;
  @override
  int get discount;
  @override
  bool get paid;
  @override
  String get status;
  @override
  dynamic get canceled_at;
  @override
  dynamic get delivered_at;
  @override
  dynamic get delivery_time;
  @override
  int get total_price;
  @override
  bool get auto_delivery;
  @override
  dynamic get frequency;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
