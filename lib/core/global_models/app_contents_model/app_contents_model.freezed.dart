// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_contents_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppContentsModel _$AppContentsModelFromJson(Map<String, dynamic> json) {
  return _AppContentsModel.fromJson(json);
}

/// @nodoc
mixin _$AppContentsModel {
  List<CareerSectionModel> get career => throw _privateConstructorUsedError;
  List<String> get developer => throw _privateConstructorUsedError;
  List<EducationSectionModel> get education =>
      throw _privateConstructorUsedError;
  HeaderSectionModel get header => throw _privateConstructorUsedError;
  List<MyProjectsSectionModel> get myProjects =>
      throw _privateConstructorUsedError;
  PersonalInfoSectionModel get personalInfo =>
      throw _privateConstructorUsedError;
  List<TechStackModel> get techStack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppContentsModelCopyWith<AppContentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppContentsModelCopyWith<$Res> {
  factory $AppContentsModelCopyWith(
          AppContentsModel value, $Res Function(AppContentsModel) then) =
      _$AppContentsModelCopyWithImpl<$Res>;
  $Res call(
      {List<CareerSectionModel> career,
      List<String> developer,
      List<EducationSectionModel> education,
      HeaderSectionModel header,
      List<MyProjectsSectionModel> myProjects,
      PersonalInfoSectionModel personalInfo,
      List<TechStackModel> techStack});

  $HeaderSectionModelCopyWith<$Res> get header;
  $PersonalInfoSectionModelCopyWith<$Res> get personalInfo;
}

/// @nodoc
class _$AppContentsModelCopyWithImpl<$Res>
    implements $AppContentsModelCopyWith<$Res> {
  _$AppContentsModelCopyWithImpl(this._value, this._then);

  final AppContentsModel _value;
  // ignore: unused_field
  final $Res Function(AppContentsModel) _then;

  @override
  $Res call({
    Object? career = freezed,
    Object? developer = freezed,
    Object? education = freezed,
    Object? header = freezed,
    Object? myProjects = freezed,
    Object? personalInfo = freezed,
    Object? techStack = freezed,
  }) {
    return _then(_value.copyWith(
      career: career == freezed
          ? _value.career
          : career // ignore: cast_nullable_to_non_nullable
              as List<CareerSectionModel>,
      developer: developer == freezed
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<EducationSectionModel>,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderSectionModel,
      myProjects: myProjects == freezed
          ? _value.myProjects
          : myProjects // ignore: cast_nullable_to_non_nullable
              as List<MyProjectsSectionModel>,
      personalInfo: personalInfo == freezed
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfoSectionModel,
      techStack: techStack == freezed
          ? _value.techStack
          : techStack // ignore: cast_nullable_to_non_nullable
              as List<TechStackModel>,
    ));
  }

  @override
  $HeaderSectionModelCopyWith<$Res> get header {
    return $HeaderSectionModelCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  @override
  $PersonalInfoSectionModelCopyWith<$Res> get personalInfo {
    return $PersonalInfoSectionModelCopyWith<$Res>(_value.personalInfo,
        (value) {
      return _then(_value.copyWith(personalInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppContentsModelCopyWith<$Res>
    implements $AppContentsModelCopyWith<$Res> {
  factory _$$_AppContentsModelCopyWith(
          _$_AppContentsModel value, $Res Function(_$_AppContentsModel) then) =
      __$$_AppContentsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CareerSectionModel> career,
      List<String> developer,
      List<EducationSectionModel> education,
      HeaderSectionModel header,
      List<MyProjectsSectionModel> myProjects,
      PersonalInfoSectionModel personalInfo,
      List<TechStackModel> techStack});

  @override
  $HeaderSectionModelCopyWith<$Res> get header;
  @override
  $PersonalInfoSectionModelCopyWith<$Res> get personalInfo;
}

/// @nodoc
class __$$_AppContentsModelCopyWithImpl<$Res>
    extends _$AppContentsModelCopyWithImpl<$Res>
    implements _$$_AppContentsModelCopyWith<$Res> {
  __$$_AppContentsModelCopyWithImpl(
      _$_AppContentsModel _value, $Res Function(_$_AppContentsModel) _then)
      : super(_value, (v) => _then(v as _$_AppContentsModel));

  @override
  _$_AppContentsModel get _value => super._value as _$_AppContentsModel;

  @override
  $Res call({
    Object? career = freezed,
    Object? developer = freezed,
    Object? education = freezed,
    Object? header = freezed,
    Object? myProjects = freezed,
    Object? personalInfo = freezed,
    Object? techStack = freezed,
  }) {
    return _then(_$_AppContentsModel(
      career: career == freezed
          ? _value._career
          : career // ignore: cast_nullable_to_non_nullable
              as List<CareerSectionModel>,
      developer: developer == freezed
          ? _value._developer
          : developer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      education: education == freezed
          ? _value._education
          : education // ignore: cast_nullable_to_non_nullable
              as List<EducationSectionModel>,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderSectionModel,
      myProjects: myProjects == freezed
          ? _value._myProjects
          : myProjects // ignore: cast_nullable_to_non_nullable
              as List<MyProjectsSectionModel>,
      personalInfo: personalInfo == freezed
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfoSectionModel,
      techStack: techStack == freezed
          ? _value._techStack
          : techStack // ignore: cast_nullable_to_non_nullable
              as List<TechStackModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppContentsModel implements _AppContentsModel {
  const _$_AppContentsModel(
      {required final List<CareerSectionModel> career,
      required final List<String> developer,
      required final List<EducationSectionModel> education,
      required this.header,
      required final List<MyProjectsSectionModel> myProjects,
      required this.personalInfo,
      required final List<TechStackModel> techStack})
      : _career = career,
        _developer = developer,
        _education = education,
        _myProjects = myProjects,
        _techStack = techStack;

  factory _$_AppContentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppContentsModelFromJson(json);

  final List<CareerSectionModel> _career;
  @override
  List<CareerSectionModel> get career {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_career);
  }

  final List<String> _developer;
  @override
  List<String> get developer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_developer);
  }

  final List<EducationSectionModel> _education;
  @override
  List<EducationSectionModel> get education {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_education);
  }

  @override
  final HeaderSectionModel header;
  final List<MyProjectsSectionModel> _myProjects;
  @override
  List<MyProjectsSectionModel> get myProjects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myProjects);
  }

  @override
  final PersonalInfoSectionModel personalInfo;
  final List<TechStackModel> _techStack;
  @override
  List<TechStackModel> get techStack {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_techStack);
  }

  @override
  String toString() {
    return 'AppContentsModel(career: $career, developer: $developer, education: $education, header: $header, myProjects: $myProjects, personalInfo: $personalInfo, techStack: $techStack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppContentsModel &&
            const DeepCollectionEquality().equals(other._career, _career) &&
            const DeepCollectionEquality()
                .equals(other._developer, _developer) &&
            const DeepCollectionEquality()
                .equals(other._education, _education) &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality()
                .equals(other._myProjects, _myProjects) &&
            const DeepCollectionEquality()
                .equals(other.personalInfo, personalInfo) &&
            const DeepCollectionEquality()
                .equals(other._techStack, _techStack));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_career),
      const DeepCollectionEquality().hash(_developer),
      const DeepCollectionEquality().hash(_education),
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(_myProjects),
      const DeepCollectionEquality().hash(personalInfo),
      const DeepCollectionEquality().hash(_techStack));

  @JsonKey(ignore: true)
  @override
  _$$_AppContentsModelCopyWith<_$_AppContentsModel> get copyWith =>
      __$$_AppContentsModelCopyWithImpl<_$_AppContentsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppContentsModelToJson(
      this,
    );
  }
}

abstract class _AppContentsModel implements AppContentsModel {
  const factory _AppContentsModel(
      {required final List<CareerSectionModel> career,
      required final List<String> developer,
      required final List<EducationSectionModel> education,
      required final HeaderSectionModel header,
      required final List<MyProjectsSectionModel> myProjects,
      required final PersonalInfoSectionModel personalInfo,
      required final List<TechStackModel> techStack}) = _$_AppContentsModel;

  factory _AppContentsModel.fromJson(Map<String, dynamic> json) =
      _$_AppContentsModel.fromJson;

  @override
  List<CareerSectionModel> get career;
  @override
  List<String> get developer;
  @override
  List<EducationSectionModel> get education;
  @override
  HeaderSectionModel get header;
  @override
  List<MyProjectsSectionModel> get myProjects;
  @override
  PersonalInfoSectionModel get personalInfo;
  @override
  List<TechStackModel> get techStack;
  @override
  @JsonKey(ignore: true)
  _$$_AppContentsModelCopyWith<_$_AppContentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
