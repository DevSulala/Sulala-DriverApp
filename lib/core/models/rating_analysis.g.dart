// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_analysis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingAnalysisImpl _$$RatingAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$RatingAnalysisImpl(
      five_star_percentage: (json['five_star_percentage'] as num).toInt(),
      four_star_percentage: (json['four_star_percentage'] as num).toInt(),
      three_star_percentage: (json['three_star_percentage'] as num).toInt(),
      two_star_percentage: (json['two_star_percentage'] as num).toInt(),
      one_star_percentage: (json['one_star_percentage'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingAnalysisImplToJson(
        _$RatingAnalysisImpl instance) =>
    <String, dynamic>{
      'five_star_percentage': instance.five_star_percentage,
      'four_star_percentage': instance.four_star_percentage,
      'three_star_percentage': instance.three_star_percentage,
      'two_star_percentage': instance.two_star_percentage,
      'one_star_percentage': instance.one_star_percentage,
    };
