import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_section_model.g.dart';
part 'header_section_model.freezed.dart';

@freezed
class HeaderSectionModel with _$HeaderSectionModel {
  const factory HeaderSectionModel({
    required String name,
    required String title,
    required String backgroundVideo,
    required String profilePhoto
  }) = _HeaderSectionModel;

  factory HeaderSectionModel.fromJson(Map<String, dynamic> json) => _$HeaderSectionModelFromJson(json);
}