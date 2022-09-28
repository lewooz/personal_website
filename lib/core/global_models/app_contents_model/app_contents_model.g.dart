// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_contents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppContentsModel _$$_AppContentsModelFromJson(Map<String, dynamic> json) =>
    _$_AppContentsModel(
      career: (json['career'] as List<dynamic>)
          .map((e) => CareerSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      developer:
          (json['developer'] as List<dynamic>).map((e) => e as String).toList(),
      education: (json['education'] as List<dynamic>)
          .map((e) => EducationSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      header:
          HeaderSectionModel.fromJson(json['header'] as Map<String, dynamic>),
      myProjects: (json['myProjects'] as List<dynamic>)
          .map(
              (e) => MyProjectsSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      personalInfo: PersonalInfoSectionModel.fromJson(
          json['personalInfo'] as Map<String, dynamic>),
      techStack: (json['techStack'] as List<dynamic>)
          .map((e) => TechStackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AppContentsModelToJson(_$_AppContentsModel instance) =>
    <String, dynamic>{
      'career': instance.career,
      'developer': instance.developer,
      'education': instance.education,
      'header': instance.header,
      'myProjects': instance.myProjects,
      'personalInfo': instance.personalInfo,
      'techStack': instance.techStack,
    };
