import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/extensions/context_extensions.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/header_section/header_section_model.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/hooks/use_responsive.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/custom_video_player.dart';

class HeaderSection extends HookConsumerWidget {
  final HeaderSectionModel headerSectionModel;

  const HeaderSection({
    required this.headerSectionModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = ref.watch(themeProvider);

    return SizedBox(
      width: context.width,
      height: context.height,
      child: Stack(
        children: [
          Positioned.fill(child: useMemoized(() => CustomVideoPlayer(videoUrl: headerSectionModel.backgroundVideo),[])),
          Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: FadeIn(
                  delay: _theme.mediumDuration,
                  duration: _theme.highDuration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(headerSectionModel.name.toUpperCase(), style: useResponsive(largeDesktopValue: AppTextStyles.h1, phone: AppTextStyles.h2).copyWith(letterSpacing: 1.3),),
                      const Gap(20),
                      Text(headerSectionModel.title.toUpperCase(), style: useResponsive(largeDesktopValue: AppTextStyles.subtitle1, phone: AppTextStyles.subtitle2).copyWith(letterSpacing: 1.3), textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
          )
        ],
      ),
    );
  }
}