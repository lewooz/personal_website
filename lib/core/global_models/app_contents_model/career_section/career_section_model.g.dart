// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CareerSectionModel _$$_CareerSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_CareerSectionModel(
      company: json['company'] as String,
      descriptions: (json['descriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      endYear: json['endYear'] as String?,
      startYear: json['startYear'] as String?,
      jobTitle: json['jobTitle'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$_CareerSectionModelToJson(
        _$_CareerSectionModel instance) =>
    <String, dynamic>{
      'company': instance.company,
      'descriptions': instance.descriptions,
      'endYear': instance.endYear,
      'startYear': instance.startYear,
      'jobTitle': instance.jobTitle,
      'location': instance.location,
    };
