// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tech_stack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TechStackModel _$TechStackModelFromJson(Map<String, dynamic> json) {
  return _TechStackModel.fromJson(json);
}

/// @nodoc
mixin _$TechStackModel {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechStackModelCopyWith<TechStackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechStackModelCopyWith<$Res> {
  factory $TechStackModelCopyWith(
          TechStackModel value, $Res Function(TechStackModel) then) =
      _$TechStackModelCopyWithImpl<$Res>;
  $Res call({String image, String name});
}

/// @nodoc
class _$TechStackModelCopyWithImpl<$Res>
    implements $TechStackModelCopyWith<$Res> {
  _$TechStackModelCopyWithImpl(this._value, this._then);

  final TechStackModel _value;
  // ignore: unused_field
  final $Res Function(TechStackModel) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TechStackModelCopyWith<$Res>
    implements $TechStackModelCopyWith<$Res> {
  factory _$$_TechStackModelCopyWith(
          _$_TechStackModel value, $Res Function(_$_TechStackModel) then) =
      __$$_TechStackModelCopyWithImpl<$Res>;
  @override
  $Res call({String image, String name});
}

/// @nodoc
class __$$_TechStackModelCopyWithImpl<$Res>
    extends _$TechStackModelCopyWithImpl<$Res>
    implements _$$_TechStackModelCopyWith<$Res> {
  __$$_TechStackModelCopyWithImpl(
      _$_TechStackModel _value, $Res Function(_$_TechStackModel) _then)
      : super(_value, (v) => _then(v as _$_TechStackModel));

  @override
  _$_TechStackModel get _value => super._value as _$_TechStackModel;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TechStackModel(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechStackModel implements _TechStackModel {
  const _$_TechStackModel({required this.image, required this.name});

  factory _$_TechStackModel.fromJson(Map<String, dynamic> json) =>
      _$$_TechStackModelFromJson(json);

  @override
  final String image;
  @override
  final String name;

  @override
  String toString() {
    return 'TechStackModel(image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechStackModel &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_TechStackModelCopyWith<_$_TechStackModel> get copyWith =>
      __$$_TechStackModelCopyWithImpl<_$_TechStackModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechStackModelToJson(
      this,
    );
  }
}

abstract class _TechStackModel implements TechStackModel {
  const factory _TechStackModel(
      {required final String image,
      required final String name}) = _$_TechStackModel;

  factory _TechStackModel.fromJson(Map<String, dynamic> json) =
      _$_TechStackModel.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TechStackModelCopyWith<_$_TechStackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
