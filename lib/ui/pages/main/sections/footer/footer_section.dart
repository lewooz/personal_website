import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/extensions/list_extensions.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/base_section.dart';

class FooterSection extends HookConsumerWidget {

    const FooterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return BaseSection(
      backgroundColor: theme.secondaryColor,
      outerPadding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Languages I speak", style: AppTextStyles.body1),
            ],
          ),
          Divider(color: theme.bgWhite),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Made with Flutter", style: AppTextStyles.body1),
              Container(
                width: 36,
                height: 36,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.black.withOpacity(0.2)
                ),
                child: Icon(FontAwesome.linkedin, color: theme.bgWhite),
              ),
              Text("Source code", style: AppTextStyles.body1),
            ],
          )
        ].withGap(10),
      ),
    );
  }
}