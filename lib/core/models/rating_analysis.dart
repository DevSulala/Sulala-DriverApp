import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_analysis.freezed.dart';
part 'rating_analysis.g.dart';

@freezed
class RatingAnalysis with _$RatingAnalysis {
  const factory RatingAnalysis({
    required int five_star_percentage,
    required int four_star_percentage,
    required int three_star_percentage,
    required int two_star_percentage,
    required int one_star_percentage,
  }) = _RatingAnalysis;

  factory RatingAnalysis.fromJson(Map<String, Object?> json) =>
      _$RatingAnalysisFromJson(json);
}
