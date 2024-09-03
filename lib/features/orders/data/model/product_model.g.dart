// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      shop: json['shop'] == null
          ? null
          : ShopModel.fromJson(json['shop'] as Map<String, dynamic>),
      category: (json['category'] as num?)?.toInt() ?? null,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      discounted_price: (json['discounted_price'] as num?)?.toDouble() ?? null,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
      description: json['description'] as String? ?? null,
      weight_volume: json['weight_volume'] as String? ?? null,
      inventory: (json['inventory'] as num?)?.toInt() ?? null,
      status: json['status'] as String? ?? null,
      deals: json['deals'] as String? ?? null,
      brand: (json['brand'] as num?)?.toInt() ?? null,
      bought_past_month: (json['bought_past_month'] as num?)?.toInt() ?? null,
      pieces_per_pack: (json['pieces_per_pack'] as num?)?.toInt() ?? null,
      weight: (json['weight'] as num?)?.toDouble() ?? null,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              null,
      rating: (json['rating'] as num?)?.toInt() ?? null,
      total_review: (json['total_review'] as num?)?.toInt() ?? null,
      benefits: json['benefits'] as String? ?? null,
      uploadDate: json['uploadDate'] == null
          ? null
          : DateTime.parse(json['uploadDate'] as String),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop': instance.shop,
      'category': instance.category,
      'title': instance.title,
      'price': instance.price,
      'discounted_price': instance.discounted_price,
      'images': instance.images,
      'description': instance.description,
      'weight_volume': instance.weight_volume,
      'inventory': instance.inventory,
      'status': instance.status,
      'deals': instance.deals,
      'brand': instance.brand,
      'bought_past_month': instance.bought_past_month,
      'pieces_per_pack': instance.pieces_per_pack,
      'weight': instance.weight,
      'tags': instance.tags,
      'rating': instance.rating,
      'total_review': instance.total_review,
      'benefits': instance.benefits,
      'uploadDate': instance.uploadDate?.toIso8601String(),
    };
