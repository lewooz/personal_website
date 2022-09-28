import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model_converters/timestamp_datetime_converter.dart';

part 'personal_info_section_model.g.dart';
part 'personal_info_section_model.freezed.dart';

@freezed
class PersonalInfoSectionModel with _$PersonalInfoSectionModel {
  const factory PersonalInfoSectionModel({
    required String city,
    required String mailAddress,
    required String town,
    required String country,
    @TimestampConvertDatetime() required DateTime birthdate
  }) = _PersonalInfoSectionModel;

  factory PersonalInfoSectionModel.fromJson(Map<String, dynamic> json) => _$PersonalInfoSectionModelFromJson(json);
}