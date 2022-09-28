import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/base_section.dart';

import '../../../../../core/global_models/app_contents_model/tech_stack/tech_stack_model.dart';

class TechStackSection extends HookConsumerWidget {
  final  List<TechStackModel> techStackList;

    const TechStackSection({super.key, required this.techStackList});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return BaseSection(
        title: "Tech Stack",
        backgroundColor: theme.black,
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: List.generate(techStackList.length, (index){
              final techStack = techStackList[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 100,
                    child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.network(techStack.image)),
                  ),
                  const Gap(10),
                  Text(techStack.name, style: AppTextStyles.buttonText1,)
                ],
              );
            }),
          ),
        )
    );
  }
}