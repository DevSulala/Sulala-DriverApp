// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopModelImpl _$$ShopModelImplFromJson(Map<String, dynamic> json) =>
    _$ShopModelImpl(
      id: (json['id'] as num).toInt(),
      legal_address: json['legal_address'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? null,
      profile_photo: json['profile_photo'] as String? ?? null,
      website: json['website'] as String? ?? null,
      facebook: json['facebook'] as String? ?? null,
      instagram: json['instagram'] as String? ?? null,
      certificates: json['certificates'] ?? null,
      tax_forms: json['tax_forms'] ?? null,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          null,
      badge: json['badge'] as String,
      rating: (json['rating'] as num?)?.toInt() ?? null,
      order_count: (json['order_count'] as num?)?.toInt() ?? null,
      total_review: (json['total_review'] as num?)?.toInt() ?? null,
    );

Map<String, dynamic> _$$ShopModelImplToJson(_$ShopModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'legal_address': instance.legal_address,
      'name': instance.name,
      'description': instance.description,
      'profile_photo': instance.profile_photo,
      'website': instance.website,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'certificates': instance.certificates,
      'tax_forms': instance.tax_forms,
      'categories': instance.categories,
      'badge': instance.badge,
      'rating': instance.rating,
      'order_count': instance.order_count,
      'total_review': instance.total_review,
    };
