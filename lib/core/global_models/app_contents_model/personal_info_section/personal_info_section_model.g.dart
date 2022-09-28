// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalInfoSectionModel _$$_PersonalInfoSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalInfoSectionModel(
      city: json['city'] as String,
      mailAddress: json['mailAddress'] as String,
      town: json['town'] as String,
      country: json['country'] as String,
      birthdate: const TimestampConvertDatetime()
          .fromJson(json['birthdate'] as Timestamp),
    );

Map<String, dynamic> _$$_PersonalInfoSectionModelToJson(
        _$_PersonalInfoSectionModel instance) =>
    <String, dynamic>{
      'city': instance.city,
      'mailAddress': instance.mailAddress,
      'town': instance.town,
      'country': instance.country,
      'birthdate': const TimestampConvertDatetime().toJson(instance.birthdate),
    };
