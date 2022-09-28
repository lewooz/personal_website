import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/education_section/education_section_model.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/header_section/header_section_model.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/personal_info_section/personal_info_section_model.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/tech_stack/tech_stack_model.dart';

import 'career_section/career_section_model.dart';
import 'my_projects_section/my_projects_section_model.dart';

part 'app_contents_model.g.dart';
part 'app_contents_model.freezed.dart';

@freezed
class AppContentsModel with _$AppContentsModel {
  const factory AppContentsModel({
    required List<CareerSectionModel> career,
    required List<String> developer,
    required List<EducationSectionModel> education,
    required HeaderSectionModel header,
    required List<MyProjectsSectionModel> myProjects,
    required PersonalInfoSectionModel personalInfo,
    required List<TechStackModel> techStack,
  }) = _AppContentsModel;

  factory AppContentsModel.fromJson(Map<String, dynamic> json) => _$AppContentsModelFromJson(json);
}