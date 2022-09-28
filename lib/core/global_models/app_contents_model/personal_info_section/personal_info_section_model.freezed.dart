// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personal_info_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfoSectionModel _$PersonalInfoSectionModelFromJson(
    Map<String, dynamic> json) {
  return _PersonalInfoSectionModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalInfoSectionModel {
  String get city => throw _privateConstructorUsedError;
  String get mailAddress => throw _privateConstructorUsedError;
  String get town => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  @TimestampConvertDatetime()
  DateTime get birthdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoSectionModelCopyWith<PersonalInfoSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoSectionModelCopyWith<$Res> {
  factory $PersonalInfoSectionModelCopyWith(PersonalInfoSectionModel value,
          $Res Function(PersonalInfoSectionModel) then) =
      _$PersonalInfoSectionModelCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String mailAddress,
      String town,
      String country,
      @TimestampConvertDatetime() DateTime birthdate});
}

/// @nodoc
class _$PersonalInfoSectionModelCopyWithImpl<$Res>
    implements $PersonalInfoSectionModelCopyWith<$Res> {
  _$PersonalInfoSectionModelCopyWithImpl(this._value, this._then);

  final PersonalInfoSectionModel _value;
  // ignore: unused_field
  final $Res Function(PersonalInfoSectionModel) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? mailAddress = freezed,
    Object? town = freezed,
    Object? country = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      mailAddress: mailAddress == freezed
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      town: town == freezed
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonalInfoSectionModelCopyWith<$Res>
    implements $PersonalInfoSectionModelCopyWith<$Res> {
  factory _$$_PersonalInfoSectionModelCopyWith(
          _$_PersonalInfoSectionModel value,
          $Res Function(_$_PersonalInfoSectionModel) then) =
      __$$_PersonalInfoSectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      String mailAddress,
      String town,
      String country,
      @TimestampConvertDatetime() DateTime birthdate});
}

/// @nodoc
class __$$_PersonalInfoSectionModelCopyWithImpl<$Res>
    extends _$PersonalInfoSectionModelCopyWithImpl<$Res>
    implements _$$_PersonalInfoSectionModelCopyWith<$Res> {
  __$$_PersonalInfoSectionModelCopyWithImpl(_$_PersonalInfoSectionModel _value,
      $Res Function(_$_PersonalInfoSectionModel) _then)
      : super(_value, (v) => _then(v as _$_PersonalInfoSectionModel));

  @override
  _$_PersonalInfoSectionModel get _value =>
      super._value as _$_PersonalInfoSectionModel;

  @override
  $Res call({
    Object? city = freezed,
    Object? mailAddress = freezed,
    Object? town = freezed,
    Object? country = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_$_PersonalInfoSectionModel(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      mailAddress: mailAddress == freezed
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      town: town == freezed
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfoSectionModel implements _PersonalInfoSectionModel {
  const _$_PersonalInfoSectionModel(
      {required this.city,
      required this.mailAddress,
      required this.town,
      required this.country,
      @TimestampConvertDatetime() required this.birthdate});

  factory _$_PersonalInfoSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInfoSectionModelFromJson(json);

  @override
  final String city;
  @override
  final String mailAddress;
  @override
  final String town;
  @override
  final String country;
  @override
  @TimestampConvertDatetime()
  final DateTime birthdate;

  @override
  String toString() {
    return 'PersonalInfoSectionModel(city: $city, mailAddress: $mailAddress, town: $town, country: $country, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalInfoSectionModel &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.mailAddress, mailAddress) &&
            const DeepCollectionEquality().equals(other.town, town) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(mailAddress),
      const DeepCollectionEquality().hash(town),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(birthdate));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalInfoSectionModelCopyWith<_$_PersonalInfoSectionModel>
      get copyWith => __$$_PersonalInfoSectionModelCopyWithImpl<
          _$_PersonalInfoSectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInfoSectionModelToJson(
      this,
    );
  }
}

abstract class _PersonalInfoSectionModel implements PersonalInfoSectionModel {
  const factory _PersonalInfoSectionModel(
          {required final String city,
          required final String mailAddress,
          required final String town,
          required final String country,
          @TimestampConvertDatetime() required final DateTime birthdate}) =
      _$_PersonalInfoSectionModel;

  factory _PersonalInfoSectionModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfoSectionModel.fromJson;

  @override
  String get city;
  @override
  String get mailAddress;
  @override
  String get town;
  @override
  String get country;
  @override
  @TimestampConvertDatetime()
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalInfoSectionModelCopyWith<_$_PersonalInfoSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}
