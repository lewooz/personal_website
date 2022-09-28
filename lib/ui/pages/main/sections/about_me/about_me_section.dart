import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/enums/app_images.dart';
import 'package:levent_ozkan_personal_website/core/extensions/list_extensions.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/hooks/use_responsive.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/base_section.dart';
import 'package:styled_text/styled_text.dart';

class AboutMeSection extends HookConsumerWidget {
  final List<String> texts;

  const AboutMeSection({super.key, required this.texts});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final paragraph = texts.join(" ");

    return BaseSection(
        title: "Developer",
        innerContainerColor: theme.black,
        innerPadding: const EdgeInsets.all(30),
        child: Flex(
          direction: useResponsive(largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
                child: StyledText(
              text: paragraph,
              style: AppTextStyles.subtitle2,
              tags: {
                "b": StyledTextTag(style: AppTextStyles.subtitle2.copyWith(fontWeight: FontWeight.w900, color: theme.secondaryColor))
              },
            )),
            const Gap(20),
            Flexible(
              child: Center(child: SvgPicture.asset(SvgImages.flutter.path)),
            ),
          ].reverseList(useResponsive(largeDesktopValue: false, tablet: true)),
        ));
  }
}
