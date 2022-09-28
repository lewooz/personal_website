import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/ui/shared/hooks/use_responsive.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';

import '../../../core/init/theme_manager/theme_manager.dart';

class BaseSection extends HookConsumerWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color? innerContainerColor;
  final Color? titleColor;
  final String? title;
  final EdgeInsets? outerPadding;
  final EdgeInsets? innerPadding;

    const BaseSection({super.key, required this.child, this.backgroundColor, this.title, this.titleColor, this.innerContainerColor, this.innerPadding, this.outerPadding});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Container(
      width: double.infinity,
      padding: outerPadding ?? EdgeInsets.symmetric(vertical: useResponsive(largeDesktopValue: 100, tablet: 50)),
      color: backgroundColor ?? theme.secondaryColor,
      child: Center(
        child: Container(
          width: double.infinity,
          constraints: theme.appBoxConstraints,
          padding: innerPadding ?? theme.pageHorizontalPadding,
          color: innerContainerColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(title != null)
              Text(title!, style:useResponsive(largeDesktopValue: AppTextStyles.h1, tablet: AppTextStyles.h2).copyWith(color: titleColor),),
              const Gap(20),
              child,
            ],
          ),
        ),
      ),
    );
  }
}