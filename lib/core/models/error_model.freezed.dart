// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorModel {
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get instance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res, ErrorModel>;
  @useResult
  $Res call(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res, $Val extends ErrorModel>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? instance = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorModelImplCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$ErrorModelImplCopyWith(
          _$ErrorModelImpl value, $Res Function(_$ErrorModelImpl) then) =
      __$$ErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance});
}

/// @nodoc
class __$$ErrorModelImplCopyWithImpl<$Res>
    extends _$ErrorModelCopyWithImpl<$Res, _$ErrorModelImpl>
    implements _$$ErrorModelImplCopyWith<$Res> {
  __$$ErrorModelImplCopyWithImpl(
      _$ErrorModelImpl _value, $Res Function(_$ErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? instance = freezed,
  }) {
    return _then(_$ErrorModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorModelImpl implements _ErrorModel {
  const _$ErrorModelImpl(
      {this.type = null,
      this.title = null,
      this.status = null,
      this.detail = null,
      this.instance = null});

  factory _$ErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorModelImplFromJson(json);

  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final int? status;
  @override
  @JsonKey()
  final String? detail;
  @override
  @JsonKey()
  final String? instance;

  @override
  String toString() {
    return 'ErrorModel(type: $type, title: $title, status: $status, detail: $detail, instance: $instance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.instance, instance) ||
                other.instance == instance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, status, detail, instance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      __$$ErrorModelImplCopyWithImpl<_$ErrorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorModel implements ErrorModel {
  const factory _ErrorModel(
      {final String? type,
      final String? title,
      final int? status,
      final String? detail,
      final String? instance}) = _$ErrorModelImpl;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$ErrorModelImpl.fromJson;

  @override
  String? get type;
  @override
  String? get title;
  @override
  int? get status;
  @override
  String? get detail;
  @override
  String? get instance;
  @override
  @JsonKey(ignore: true)
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
