import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/personal_info_section/personal_info_section_model.dart';
import 'package:levent_ozkan_personal_website/core/init/locale_manager/locale_keys.g.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/gradient_text.dart';

class PersonalInfoSection extends HookConsumerWidget {
  final PersonalInfoSectionModel personalInfoSectionModel;

  const PersonalInfoSection({
    required this.personalInfoSectionModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = ref.watch(themeProvider);
    final _age = DateTime.now().year - personalInfoSectionModel.birthdate.year;

    Widget _buildPersonalInfoElement(String title, String value) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(value, style: AppTextStyles.h1.copyWith(color: _theme.bgWhite, fontSize: 80),),
        Text(title, style: AppTextStyles.h1.copyWith(color: _theme.bgWhite, fontSize: 30))
      ],
    );


    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 100),
      color: _theme.primaryColor,
      child: Center(
        child: Container(
          width: double.infinity,
          constraints: _theme.appBoxConstraints,
          child:               Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildPersonalInfoElement(LocaleKeys.age.tr(),_age.toString()),
              _buildPersonalInfoElement(LocaleKeys.country.tr(), personalInfoSectionModel.country),
              _buildPersonalInfoElement(personalInfoSectionModel.city, personalInfoSectionModel.city.substring(0,3)),
            ],
          )
          ,
        ),
      ),
    );
  }


}