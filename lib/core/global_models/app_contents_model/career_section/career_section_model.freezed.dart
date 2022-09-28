// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'career_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CareerSectionModel _$CareerSectionModelFromJson(Map<String, dynamic> json) {
  return _CareerSectionModel.fromJson(json);
}

/// @nodoc
mixin _$CareerSectionModel {
  String get company => throw _privateConstructorUsedError;
  List<String>? get descriptions => throw _privateConstructorUsedError;
  String? get endYear => throw _privateConstructorUsedError;
  String? get startYear => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareerSectionModelCopyWith<CareerSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerSectionModelCopyWith<$Res> {
  factory $CareerSectionModelCopyWith(
          CareerSectionModel value, $Res Function(CareerSectionModel) then) =
      _$CareerSectionModelCopyWithImpl<$Res>;
  $Res call(
      {String company,
      List<String>? descriptions,
      String? endYear,
      String? startYear,
      String? jobTitle,
      String? location});
}

/// @nodoc
class _$CareerSectionModelCopyWithImpl<$Res>
    implements $CareerSectionModelCopyWith<$Res> {
  _$CareerSectionModelCopyWithImpl(this._value, this._then);

  final CareerSectionModel _value;
  // ignore: unused_field
  final $Res Function(CareerSectionModel) _then;

  @override
  $Res call({
    Object? company = freezed,
    Object? descriptions = freezed,
    Object? endYear = freezed,
    Object? startYear = freezed,
    Object? jobTitle = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CareerSectionModelCopyWith<$Res>
    implements $CareerSectionModelCopyWith<$Res> {
  factory _$$_CareerSectionModelCopyWith(_$_CareerSectionModel value,
          $Res Function(_$_CareerSectionModel) then) =
      __$$_CareerSectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String company,
      List<String>? descriptions,
      String? endYear,
      String? startYear,
      String? jobTitle,
      String? location});
}

/// @nodoc
class __$$_CareerSectionModelCopyWithImpl<$Res>
    extends _$CareerSectionModelCopyWithImpl<$Res>
    implements _$$_CareerSectionModelCopyWith<$Res> {
  __$$_CareerSectionModelCopyWithImpl(
      _$_CareerSectionModel _value, $Res Function(_$_CareerSectionModel) _then)
      : super(_value, (v) => _then(v as _$_CareerSectionModel));

  @override
  _$_CareerSectionModel get _value => super._value as _$_CareerSectionModel;

  @override
  $Res call({
    Object? company = freezed,
    Object? descriptions = freezed,
    Object? endYear = freezed,
    Object? startYear = freezed,
    Object? jobTitle = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_CareerSectionModel(
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      descriptions: descriptions == freezed
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CareerSectionModel implements _CareerSectionModel {
  const _$_CareerSectionModel(
      {required this.company,
      final List<String>? descriptions,
      this.endYear,
      this.startYear,
      this.jobTitle,
      this.location})
      : _descriptions = descriptions;

  factory _$_CareerSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CareerSectionModelFromJson(json);

  @override
  final String company;
  final List<String>? _descriptions;
  @override
  List<String>? get descriptions {
    final value = _descriptions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? endYear;
  @override
  final String? startYear;
  @override
  final String? jobTitle;
  @override
  final String? location;

  @override
  String toString() {
    return 'CareerSectionModel(company: $company, descriptions: $descriptions, endYear: $endYear, startYear: $startYear, jobTitle: $jobTitle, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CareerSectionModel &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions) &&
            const DeepCollectionEquality().equals(other.endYear, endYear) &&
            const DeepCollectionEquality().equals(other.startYear, startYear) &&
            const DeepCollectionEquality().equals(other.jobTitle, jobTitle) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(_descriptions),
      const DeepCollectionEquality().hash(endYear),
      const DeepCollectionEquality().hash(startYear),
      const DeepCollectionEquality().hash(jobTitle),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_CareerSectionModelCopyWith<_$_CareerSectionModel> get copyWith =>
      __$$_CareerSectionModelCopyWithImpl<_$_CareerSectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CareerSectionModelToJson(
      this,
    );
  }
}

abstract class _CareerSectionModel implements CareerSectionModel {
  const factory _CareerSectionModel(
      {required final String company,
      final List<String>? descriptions,
      final String? endYear,
      final String? startYear,
      final String? jobTitle,
      final String? location}) = _$_CareerSectionModel;

  factory _CareerSectionModel.fromJson(Map<String, dynamic> json) =
      _$_CareerSectionModel.fromJson;

  @override
  String get company;
  @override
  List<String>? get descriptions;
  @override
  String? get endYear;
  @override
  String? get startYear;
  @override
  String? get jobTitle;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$_CareerSectionModelCopyWith<_$_CareerSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
