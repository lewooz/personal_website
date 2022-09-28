import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:levent_ozkan_personal_website/core/enums/app_platform.dart';
import 'package:levent_ozkan_personal_website/core/enums/app_type.dart';

part 'my_projects_section_model.g.dart';
part 'my_projects_section_model.freezed.dart';

@freezed
class MyProjectsSectionModel with _$MyProjectsSectionModel {
  const factory MyProjectsSectionModel({
    required String name,
    required AppType type,
    required List<AppPlatform> platforms,
    String? logo,
    String? description,
    String? flutterWebLink,
    String? developmentYear,
    String? githubLink,
    String? githubAndroid,
    String? githubIos,
    List<String>? properties,
    String? appStoreLink,
    String? playStoreLink,
  }) = _MyProjectsSectionModel;

  factory MyProjectsSectionModel.fromJson(Map<String, dynamic> json) => _$MyProjectsSectionModelFromJson(json);
}