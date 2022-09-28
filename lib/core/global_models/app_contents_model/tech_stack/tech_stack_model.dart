import 'package:freezed_annotation/freezed_annotation.dart';

part 'tech_stack_model.g.dart';
part 'tech_stack_model.freezed.dart';

@freezed
class TechStackModel with _$TechStackModel {
  const factory TechStackModel({
    required String image,
    required String name
  }) = _TechStackModel;

  factory TechStackModel.fromJson(Map<String, dynamic> json) => _$TechStackModelFromJson(json);
}