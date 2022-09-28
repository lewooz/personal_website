// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'header_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeaderSectionModel _$HeaderSectionModelFromJson(Map<String, dynamic> json) {
  return _HeaderSectionModel.fromJson(json);
}

/// @nodoc
mixin _$HeaderSectionModel {
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get backgroundVideo => throw _privateConstructorUsedError;
  String get profilePhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderSectionModelCopyWith<HeaderSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderSectionModelCopyWith<$Res> {
  factory $HeaderSectionModelCopyWith(
          HeaderSectionModel value, $Res Function(HeaderSectionModel) then) =
      _$HeaderSectionModelCopyWithImpl<$Res>;
  $Res call(
      {String name, String title, String backgroundVideo, String profilePhoto});
}

/// @nodoc
class _$HeaderSectionModelCopyWithImpl<$Res>
    implements $HeaderSectionModelCopyWith<$Res> {
  _$HeaderSectionModelCopyWithImpl(this._value, this._then);

  final HeaderSectionModel _value;
  // ignore: unused_field
  final $Res Function(HeaderSectionModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? backgroundVideo = freezed,
    Object? profilePhoto = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundVideo: backgroundVideo == freezed
          ? _value.backgroundVideo
          : backgroundVideo // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: profilePhoto == freezed
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HeaderSectionModelCopyWith<$Res>
    implements $HeaderSectionModelCopyWith<$Res> {
  factory _$$_HeaderSectionModelCopyWith(_$_HeaderSectionModel value,
          $Res Function(_$_HeaderSectionModel) then) =
      __$$_HeaderSectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String title, String backgroundVideo, String profilePhoto});
}

/// @nodoc
class __$$_HeaderSectionModelCopyWithImpl<$Res>
    extends _$HeaderSectionModelCopyWithImpl<$Res>
    implements _$$_HeaderSectionModelCopyWith<$Res> {
  __$$_HeaderSectionModelCopyWithImpl(
      _$_HeaderSectionModel _value, $Res Function(_$_HeaderSectionModel) _then)
      : super(_value, (v) => _then(v as _$_HeaderSectionModel));

  @override
  _$_HeaderSectionModel get _value => super._value as _$_HeaderSectionModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? backgroundVideo = freezed,
    Object? profilePhoto = freezed,
  }) {
    return _then(_$_HeaderSectionModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundVideo: backgroundVideo == freezed
          ? _value.backgroundVideo
          : backgroundVideo // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: profilePhoto == freezed
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeaderSectionModel implements _HeaderSectionModel {
  const _$_HeaderSectionModel(
      {required this.name,
      required this.title,
      required this.backgroundVideo,
      required this.profilePhoto});

  factory _$_HeaderSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_HeaderSectionModelFromJson(json);

  @override
  final String name;
  @override
  final String title;
  @override
  final String backgroundVideo;
  @override
  final String profilePhoto;

  @override
  String toString() {
    return 'HeaderSectionModel(name: $name, title: $title, backgroundVideo: $backgroundVideo, profilePhoto: $profilePhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeaderSectionModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.backgroundVideo, backgroundVideo) &&
            const DeepCollectionEquality()
                .equals(other.profilePhoto, profilePhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(backgroundVideo),
      const DeepCollectionEquality().hash(profilePhoto));

  @JsonKey(ignore: true)
  @override
  _$$_HeaderSectionModelCopyWith<_$_HeaderSectionModel> get copyWith =>
      __$$_HeaderSectionModelCopyWithImpl<_$_HeaderSectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeaderSectionModelToJson(
      this,
    );
  }
}

abstract class _HeaderSectionModel implements HeaderSectionModel {
  const factory _HeaderSectionModel(
      {required final String name,
      required final String title,
      required final String backgroundVideo,
      required final String profilePhoto}) = _$_HeaderSectionModel;

  factory _HeaderSectionModel.fromJson(Map<String, dynamic> json) =
      _$_HeaderSectionModel.fromJson;

  @override
  String get name;
  @override
  String get title;
  @override
  String get backgroundVideo;
  @override
  String get profilePhoto;
  @override
  @JsonKey(ignore: true)
  _$$_HeaderSectionModelCopyWith<_$_HeaderSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
