import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_section_model.g.dart';
part 'education_section_model.freezed.dart';

@freezed
class EducationSectionModel with _$EducationSectionModel {
  const factory EducationSectionModel({
    int? endYear,
    int? startYear,
    String? image,
    String? name
  }) = _EducationSectionModel;

  factory EducationSectionModel.fromJson(Map<String, dynamic> json) => _$EducationSectionModelFromJson(json);
}