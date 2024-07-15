// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError; // TODO: remove this
  ShopModel? get shop =>
      throw _privateConstructorUsedError; // TODO: uncomment this
// @Default(null) ShopModel? shop,
  int? get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get discounted_price => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get weight_volume => throw _privateConstructorUsedError;
  int? get inventory => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get deals =>
      throw _privateConstructorUsedError; // @Default(null) Status? status,
  int? get brand => throw _privateConstructorUsedError;
  int? get bought_past_month => throw _privateConstructorUsedError;
  int? get pieces_per_pack => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  List<String>? get tags =>
      throw _privateConstructorUsedError; // @Default(null) List<AnimalSpeciesModel>? species,
  int? get rating => throw _privateConstructorUsedError;
  int? get total_review => throw _privateConstructorUsedError;
  String? get benefits => throw _privateConstructorUsedError;
  DateTime? get uploadDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      ShopModel? shop,
      int? category,
      String title,
      double price,
      double? discounted_price,
      List<String>? images,
      String? description,
      String? weight_volume,
      int? inventory,
      String? status,
      String? deals,
      int? brand,
      int? bought_past_month,
      int? pieces_per_pack,
      double? weight,
      List<String>? tags,
      int? rating,
      int? total_review,
      String? benefits,
      DateTime? uploadDate});

  $ShopModelCopyWith<$Res>? get shop;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = freezed,
    Object? category = freezed,
    Object? title = null,
    Object? price = null,
    Object? discounted_price = freezed,
    Object? images = freezed,
    Object? description = freezed,
    Object? weight_volume = freezed,
    Object? inventory = freezed,
    Object? status = freezed,
    Object? deals = freezed,
    Object? brand = freezed,
    Object? bought_past_month = freezed,
    Object? pieces_per_pack = freezed,
    Object? weight = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
    Object? total_review = freezed,
    Object? benefits = freezed,
    Object? uploadDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as double?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weight_volume: freezed == weight_volume
          ? _value.weight_volume
          : weight_volume // ignore: cast_nullable_to_non_nullable
              as String?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deals: freezed == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int?,
      bought_past_month: freezed == bought_past_month
          ? _value.bought_past_month
          : bought_past_month // ignore: cast_nullable_to_non_nullable
              as int?,
      pieces_per_pack: freezed == pieces_per_pack
          ? _value.pieces_per_pack
          : pieces_per_pack // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      total_review: freezed == total_review
          ? _value.total_review
          : total_review // ignore: cast_nullable_to_non_nullable
              as int?,
      benefits: freezed == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopModelCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopModelCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ShopModel? shop,
      int? category,
      String title,
      double price,
      double? discounted_price,
      List<String>? images,
      String? description,
      String? weight_volume,
      int? inventory,
      String? status,
      String? deals,
      int? brand,
      int? bought_past_month,
      int? pieces_per_pack,
      double? weight,
      List<String>? tags,
      int? rating,
      int? total_review,
      String? benefits,
      DateTime? uploadDate});

  @override
  $ShopModelCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = freezed,
    Object? category = freezed,
    Object? title = null,
    Object? price = null,
    Object? discounted_price = freezed,
    Object? images = freezed,
    Object? description = freezed,
    Object? weight_volume = freezed,
    Object? inventory = freezed,
    Object? status = freezed,
    Object? deals = freezed,
    Object? brand = freezed,
    Object? bought_past_month = freezed,
    Object? pieces_per_pack = freezed,
    Object? weight = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
    Object? total_review = freezed,
    Object? benefits = freezed,
    Object? uploadDate = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as double?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weight_volume: freezed == weight_volume
          ? _value.weight_volume
          : weight_volume // ignore: cast_nullable_to_non_nullable
              as String?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deals: freezed == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int?,
      bought_past_month: freezed == bought_past_month
          ? _value.bought_past_month
          : bought_past_month // ignore: cast_nullable_to_non_nullable
              as int?,
      pieces_per_pack: freezed == pieces_per_pack
          ? _value.pieces_per_pack
          : pieces_per_pack // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      total_review: freezed == total_review
          ? _value.total_review
          : total_review // ignore: cast_nullable_to_non_nullable
              as int?,
      benefits: freezed == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      this.shop = null,
      this.category = null,
      required this.title,
      required this.price,
      this.discounted_price = null,
      final List<String>? images = null,
      this.description = null,
      this.weight_volume = null,
      this.inventory = null,
      this.status = null,
      this.deals = null,
      this.brand = null,
      this.bought_past_month = null,
      this.pieces_per_pack = null,
      this.weight = null,
      final List<String>? tags = null,
      this.rating = null,
      this.total_review = null,
      this.benefits = null,
      this.uploadDate = null})
      : _images = images,
        _tags = tags;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
// TODO: remove this
  @override
  @JsonKey()
  final ShopModel? shop;
// TODO: uncomment this
// @Default(null) ShopModel? shop,
  @override
  @JsonKey()
  final int? category;
  @override
  final String title;
  @override
  final double price;
  @override
  @JsonKey()
  final double? discounted_price;
  final List<String>? _images;
  @override
  @JsonKey()
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? weight_volume;
  @override
  @JsonKey()
  final int? inventory;
  @override
  @JsonKey()
  final String? status;
  @override
  @JsonKey()
  final String? deals;
// @Default(null) Status? status,
  @override
  @JsonKey()
  final int? brand;
  @override
  @JsonKey()
  final int? bought_past_month;
  @override
  @JsonKey()
  final int? pieces_per_pack;
  @override
  @JsonKey()
  final double? weight;
  final List<String>? _tags;
  @override
  @JsonKey()
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// @Default(null) List<AnimalSpeciesModel>? species,
  @override
  @JsonKey()
  final int? rating;
  @override
  @JsonKey()
  final int? total_review;
  @override
  @JsonKey()
  final String? benefits;
  @override
  @JsonKey()
  final DateTime? uploadDate;

  @override
  String toString() {
    return 'ProductModel(id: $id, shop: $shop, category: $category, title: $title, price: $price, discounted_price: $discounted_price, images: $images, description: $description, weight_volume: $weight_volume, inventory: $inventory, status: $status, deals: $deals, brand: $brand, bought_past_month: $bought_past_month, pieces_per_pack: $pieces_per_pack, weight: $weight, tags: $tags, rating: $rating, total_review: $total_review, benefits: $benefits, uploadDate: $uploadDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discounted_price, discounted_price) ||
                other.discounted_price == discounted_price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weight_volume, weight_volume) ||
                other.weight_volume == weight_volume) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deals, deals) || other.deals == deals) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.bought_past_month, bought_past_month) ||
                other.bought_past_month == bought_past_month) &&
            (identical(other.pieces_per_pack, pieces_per_pack) ||
                other.pieces_per_pack == pieces_per_pack) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.total_review, total_review) ||
                other.total_review == total_review) &&
            (identical(other.benefits, benefits) ||
                other.benefits == benefits) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        shop,
        category,
        title,
        price,
        discounted_price,
        const DeepCollectionEquality().hash(_images),
        description,
        weight_volume,
        inventory,
        status,
        deals,
        brand,
        bought_past_month,
        pieces_per_pack,
        weight,
        const DeepCollectionEquality().hash(_tags),
        rating,
        total_review,
        benefits,
        uploadDate
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final int id,
      final ShopModel? shop,
      final int? category,
      required final String title,
      required final double price,
      final double? discounted_price,
      final List<String>? images,
      final String? description,
      final String? weight_volume,
      final int? inventory,
      final String? status,
      final String? deals,
      final int? brand,
      final int? bought_past_month,
      final int? pieces_per_pack,
      final double? weight,
      final List<String>? tags,
      final int? rating,
      final int? total_review,
      final String? benefits,
      final DateTime? uploadDate}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override // TODO: remove this
  ShopModel? get shop;
  @override // TODO: uncomment this
// @Default(null) ShopModel? shop,
  int? get category;
  @override
  String get title;
  @override
  double get price;
  @override
  double? get discounted_price;
  @override
  List<String>? get images;
  @override
  String? get description;
  @override
  String? get weight_volume;
  @override
  int? get inventory;
  @override
  String? get status;
  @override
  String? get deals;
  @override // @Default(null) Status? status,
  int? get brand;
  @override
  int? get bought_past_month;
  @override
  int? get pieces_per_pack;
  @override
  double? get weight;
  @override
  List<String>? get tags;
  @override // @Default(null) List<AnimalSpeciesModel>? species,
  int? get rating;
  @override
  int? get total_review;
  @override
  String? get benefits;
  @override
  DateTime? get uploadDate;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
