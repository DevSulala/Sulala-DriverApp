import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulala_driver_app/features/orders/data/model/shop_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    // TODO: remove this
    @Default(null) ShopModel? shop,

    // TODO: uncomment this
    // @Default(null) ShopModel? shop,
    @Default(null) int? category,
    required String title,
    required double price,
    @Default(null) double? discounted_price,
    @Default(null) List<String>? images,
    @Default(null) String? description,
    @Default(null) String? weight_volume,
    @Default(null) int? inventory,
    @Default(null) String? status,
    @Default(null) String? deals,
    // @Default(null) Status? status,
    @Default(null) int? brand,
    @Default(null) int? bought_past_month,
    @Default(null) int? pieces_per_pack,
    @Default(null) double? weight,
    @Default(null) List<String>? tags,
    // @Default(null) List<AnimalSpeciesModel>? species,
    @Default(null) int? rating,
    @Default(null) int? total_review,
    @Default(null) String? benefits,
    @Default(null) DateTime? uploadDate,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
