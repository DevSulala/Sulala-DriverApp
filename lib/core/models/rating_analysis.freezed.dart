// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingAnalysis _$RatingAnalysisFromJson(Map<String, dynamic> json) {
  return _RatingAnalysis.fromJson(json);
}

/// @nodoc
mixin _$RatingAnalysis {
  int get five_star_percentage => throw _privateConstructorUsedError;
  int get four_star_percentage => throw _privateConstructorUsedError;
  int get three_star_percentage => throw _privateConstructorUsedError;
  int get two_star_percentage => throw _privateConstructorUsedError;
  int get one_star_percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingAnalysisCopyWith<RatingAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingAnalysisCopyWith<$Res> {
  factory $RatingAnalysisCopyWith(
          RatingAnalysis value, $Res Function(RatingAnalysis) then) =
      _$RatingAnalysisCopyWithImpl<$Res, RatingAnalysis>;
  @useResult
  $Res call(
      {int five_star_percentage,
      int four_star_percentage,
      int three_star_percentage,
      int two_star_percentage,
      int one_star_percentage});
}

/// @nodoc
class _$RatingAnalysisCopyWithImpl<$Res, $Val extends RatingAnalysis>
    implements $RatingAnalysisCopyWith<$Res> {
  _$RatingAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? five_star_percentage = null,
    Object? four_star_percentage = null,
    Object? three_star_percentage = null,
    Object? two_star_percentage = null,
    Object? one_star_percentage = null,
  }) {
    return _then(_value.copyWith(
      five_star_percentage: null == five_star_percentage
          ? _value.five_star_percentage
          : five_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      four_star_percentage: null == four_star_percentage
          ? _value.four_star_percentage
          : four_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      three_star_percentage: null == three_star_percentage
          ? _value.three_star_percentage
          : three_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      two_star_percentage: null == two_star_percentage
          ? _value.two_star_percentage
          : two_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      one_star_percentage: null == one_star_percentage
          ? _value.one_star_percentage
          : one_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingAnalysisImplCopyWith<$Res>
    implements $RatingAnalysisCopyWith<$Res> {
  factory _$$RatingAnalysisImplCopyWith(_$RatingAnalysisImpl value,
          $Res Function(_$RatingAnalysisImpl) then) =
      __$$RatingAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int five_star_percentage,
      int four_star_percentage,
      int three_star_percentage,
      int two_star_percentage,
      int one_star_percentage});
}

/// @nodoc
class __$$RatingAnalysisImplCopyWithImpl<$Res>
    extends _$RatingAnalysisCopyWithImpl<$Res, _$RatingAnalysisImpl>
    implements _$$RatingAnalysisImplCopyWith<$Res> {
  __$$RatingAnalysisImplCopyWithImpl(
      _$RatingAnalysisImpl _value, $Res Function(_$RatingAnalysisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? five_star_percentage = null,
    Object? four_star_percentage = null,
    Object? three_star_percentage = null,
    Object? two_star_percentage = null,
    Object? one_star_percentage = null,
  }) {
    return _then(_$RatingAnalysisImpl(
      five_star_percentage: null == five_star_percentage
          ? _value.five_star_percentage
          : five_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      four_star_percentage: null == four_star_percentage
          ? _value.four_star_percentage
          : four_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      three_star_percentage: null == three_star_percentage
          ? _value.three_star_percentage
          : three_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      two_star_percentage: null == two_star_percentage
          ? _value.two_star_percentage
          : two_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
      one_star_percentage: null == one_star_percentage
          ? _value.one_star_percentage
          : one_star_percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingAnalysisImpl implements _RatingAnalysis {
  const _$RatingAnalysisImpl(
      {required this.five_star_percentage,
      required this.four_star_percentage,
      required this.three_star_percentage,
      required this.two_star_percentage,
      required this.one_star_percentage});

  factory _$RatingAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingAnalysisImplFromJson(json);

  @override
  final int five_star_percentage;
  @override
  final int four_star_percentage;
  @override
  final int three_star_percentage;
  @override
  final int two_star_percentage;
  @override
  final int one_star_percentage;

  @override
  String toString() {
    return 'RatingAnalysis(five_star_percentage: $five_star_percentage, four_star_percentage: $four_star_percentage, three_star_percentage: $three_star_percentage, two_star_percentage: $two_star_percentage, one_star_percentage: $one_star_percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingAnalysisImpl &&
            (identical(other.five_star_percentage, five_star_percentage) ||
                other.five_star_percentage == five_star_percentage) &&
            (identical(other.four_star_percentage, four_star_percentage) ||
                other.four_star_percentage == four_star_percentage) &&
            (identical(other.three_star_percentage, three_star_percentage) ||
                other.three_star_percentage == three_star_percentage) &&
            (identical(other.two_star_percentage, two_star_percentage) ||
                other.two_star_percentage == two_star_percentage) &&
            (identical(other.one_star_percentage, one_star_percentage) ||
                other.one_star_percentage == one_star_percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      five_star_percentage,
      four_star_percentage,
      three_star_percentage,
      two_star_percentage,
      one_star_percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingAnalysisImplCopyWith<_$RatingAnalysisImpl> get copyWith =>
      __$$RatingAnalysisImplCopyWithImpl<_$RatingAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingAnalysisImplToJson(
      this,
    );
  }
}

abstract class _RatingAnalysis implements RatingAnalysis {
  const factory _RatingAnalysis(
      {required final int five_star_percentage,
      required final int four_star_percentage,
      required final int three_star_percentage,
      required final int two_star_percentage,
      required final int one_star_percentage}) = _$RatingAnalysisImpl;

  factory _RatingAnalysis.fromJson(Map<String, dynamic> json) =
      _$RatingAnalysisImpl.fromJson;

  @override
  int get five_star_percentage;
  @override
  int get four_star_percentage;
  @override
  int get three_star_percentage;
  @override
  int get two_star_percentage;
  @override
  int get one_star_percentage;
  @override
  @JsonKey(ignore: true)
  _$$RatingAnalysisImplCopyWith<_$RatingAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
