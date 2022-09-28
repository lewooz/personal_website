// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'education_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EducationSectionModel _$EducationSectionModelFromJson(
    Map<String, dynamic> json) {
  return _EducationSectionModel.fromJson(json);
}

/// @nodoc
mixin _$EducationSectionModel {
  int? get endYear => throw _privateConstructorUsedError;
  int? get startYear => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationSectionModelCopyWith<EducationSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationSectionModelCopyWith<$Res> {
  factory $EducationSectionModelCopyWith(EducationSectionModel value,
          $Res Function(EducationSectionModel) then) =
      _$EducationSectionModelCopyWithImpl<$Res>;
  $Res call({int? endYear, int? startYear, String? image, String? name});
}

/// @nodoc
class _$EducationSectionModelCopyWithImpl<$Res>
    implements $EducationSectionModelCopyWith<$Res> {
  _$EducationSectionModelCopyWithImpl(this._value, this._then);

  final EducationSectionModel _value;
  // ignore: unused_field
  final $Res Function(EducationSectionModel) _then;

  @override
  $Res call({
    Object? endYear = freezed,
    Object? startYear = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EducationSectionModelCopyWith<$Res>
    implements $EducationSectionModelCopyWith<$Res> {
  factory _$$_EducationSectionModelCopyWith(_$_EducationSectionModel value,
          $Res Function(_$_EducationSectionModel) then) =
      __$$_EducationSectionModelCopyWithImpl<$Res>;
  @override
  $Res call({int? endYear, int? startYear, String? image, String? name});
}

/// @nodoc
class __$$_EducationSectionModelCopyWithImpl<$Res>
    extends _$EducationSectionModelCopyWithImpl<$Res>
    implements _$$_EducationSectionModelCopyWith<$Res> {
  __$$_EducationSectionModelCopyWithImpl(_$_EducationSectionModel _value,
      $Res Function(_$_EducationSectionModel) _then)
      : super(_value, (v) => _then(v as _$_EducationSectionModel));

  @override
  _$_EducationSectionModel get _value =>
      super._value as _$_EducationSectionModel;

  @override
  $Res call({
    Object? endYear = freezed,
    Object? startYear = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_EducationSectionModel(
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EducationSectionModel implements _EducationSectionModel {
  const _$_EducationSectionModel(
      {this.endYear, this.startYear, this.image, this.name});

  factory _$_EducationSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_EducationSectionModelFromJson(json);

  @override
  final int? endYear;
  @override
  final int? startYear;
  @override
  final String? image;
  @override
  final String? name;

  @override
  String toString() {
    return 'EducationSectionModel(endYear: $endYear, startYear: $startYear, image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EducationSectionModel &&
            const DeepCollectionEquality().equals(other.endYear, endYear) &&
            const DeepCollectionEquality().equals(other.startYear, startYear) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(endYear),
      const DeepCollectionEquality().hash(startYear),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_EducationSectionModelCopyWith<_$_EducationSectionModel> get copyWith =>
      __$$_EducationSectionModelCopyWithImpl<_$_EducationSectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationSectionModelToJson(
      this,
    );
  }
}

abstract class _EducationSectionModel implements EducationSectionModel {
  const factory _EducationSectionModel(
      {final int? endYear,
      final int? startYear,
      final String? image,
      final String? name}) = _$_EducationSectionModel;

  factory _EducationSectionModel.fromJson(Map<String, dynamic> json) =
      _$_EducationSectionModel.fromJson;

  @override
  int? get endYear;
  @override
  int? get startYear;
  @override
  String? get image;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_EducationSectionModelCopyWith<_$_EducationSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
