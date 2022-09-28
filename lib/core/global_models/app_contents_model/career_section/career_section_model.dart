import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_section_model.g.dart';
part 'career_section_model.freezed.dart';

@freezed
class CareerSectionModel with _$CareerSectionModel {
  const factory CareerSectionModel({
    required String company,
    List<String>? descriptions,
    String? endYear,
    String? startYear,
    String? jobTitle,
    String? location,
  }) = _CareerSectionModel;

  factory CareerSectionModel.fromJson(Map<String, dynamic> json) => _$CareerSectionModelFromJson(json);
}