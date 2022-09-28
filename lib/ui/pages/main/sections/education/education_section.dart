import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/enums/app_images.dart';
import 'package:levent_ozkan_personal_website/core/extensions/list_extensions.dart';
import 'package:levent_ozkan_personal_website/ui/shared/hooks/use_responsive.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/animate_on_scroll.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/animate_on_visible.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/custom_animation.dart';

import '../../../../../core/global_models/app_contents_model/education_section/education_section_model.dart';
import '../../../../../core/init/theme_manager/theme_manager.dart';
import '../../../../shared/widgets/base_section.dart';

class EducationSection extends HookConsumerWidget {
  final List<EducationSectionModel> educationList;

  EducationSection({required this.educationList});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return BaseSection(
      title: "Education",
      child: Flex(
        direction: useResponsive(largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: AnimateOnVisible(
                visibilityKey: ValueKey("education"),
                onPageBuilder: (_, value) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(educationList.length, (index) {
                        final education = educationList[index];
                        return CustomAnimation(
                          delay: Duration(milliseconds: 300 * (index + 1)),
                          duration: theme.normalDuration,
                          animate: value,
                          animationType: CustomAnimationType.FadeIn,
                          child: ListTile(
                            leading: education.image != null
                                ? Image.network(
                                    education.image!,
                                    width: 60,
                                  )
                                : null,
                            title: Text(education.name ?? "", style: useResponsive(largeDesktopValue: AppTextStyles.h3, tablet: AppTextStyles.h4)),
                            subtitle: Text("${education.startYear} - ${education.endYear}",
                                style: AppTextStyles.h4),
                          ),
                        );
                      }),
                    )),
          ),
          theme.veryBigSpace,
          Flexible(
              child: AnimateOnScroll(
                  visibilityKey: ValueKey("education_image"),
                  animationType: CustomAnimationType.FadeIn,
                  child: Image.asset(PngImages.education.path)))
        ].reverseList(useResponsive(largeDesktopValue: false, tablet: true)),
      ),
    );
  }
}
