// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_projects_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyProjectsSectionModel _$$_MyProjectsSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MyProjectsSectionModel(
      name: json['name'] as String,
      type: $enumDecode(_$AppTypeEnumMap, json['type']),
      platforms: (json['platforms'] as List<dynamic>)
          .map((e) => $enumDecode(_$AppPlatformEnumMap, e))
          .toList(),
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      flutterWebLink: json['flutterWebLink'] as String?,
      developmentYear: json['developmentYear'] as String?,
      githubLink: json['githubLink'] as String?,
      githubAndroid: json['githubAndroid'] as String?,
      githubIos: json['githubIos'] as String?,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      appStoreLink: json['appStoreLink'] as String?,
      playStoreLink: json['playStoreLink'] as String?,
    );

Map<String, dynamic> _$$_MyProjectsSectionModelToJson(
        _$_MyProjectsSectionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$AppTypeEnumMap[instance.type]!,
      'platforms':
          instance.platforms.map((e) => _$AppPlatformEnumMap[e]!).toList(),
      'logo': instance.logo,
      'description': instance.description,
      'flutterWebLink': instance.flutterWebLink,
      'developmentYear': instance.developmentYear,
      'githubLink': instance.githubLink,
      'githubAndroid': instance.githubAndroid,
      'githubIos': instance.githubIos,
      'properties': instance.properties,
      'appStoreLink': instance.appStoreLink,
      'playStoreLink': instance.playStoreLink,
    };

const _$AppTypeEnumMap = {
  AppType.professional: 'professional',
  AppType.personal: 'personal',
};

const _$AppPlatformEnumMap = {
  AppPlatform.android: 'android',
  AppPlatform.ios: 'ios',
  AppPlatform.web: 'web',
  AppPlatform.flutter: 'flutter',
};
