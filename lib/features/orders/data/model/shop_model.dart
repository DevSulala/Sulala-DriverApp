import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_model.freezed.dart';
part 'shop_model.g.dart';

@freezed
class ShopModel with _$ShopModel {
  const factory ShopModel({
    required int id,
    // required int owner,
    required String legal_address,
    required String name,
    @Default(null) String? description,
    @Default(null) String? profile_photo,
    @Default(null) String? website,
    @Default(null) String? facebook,
    @Default(null) String? instagram,
    @Default(null) dynamic certificates,
    @Default(null) dynamic tax_forms,
    @Default(null) List<int>? categories,
    required String badge,
    @Default(null) int? rating,
    @Default(null) int? order_count,
    @Default(null) int? total_review,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);
}
