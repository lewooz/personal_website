import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/extensions/list_extensions.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/animate_on_scroll.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/base_section.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/custom_animation.dart';

import '../../../../../core/global_models/app_contents_model/career_section/career_section_model.dart';
import '../../../../../core/init/theme_manager/theme_manager.dart';

class CareerSection extends HookConsumerWidget {
  final List<CareerSectionModel> careerList;

  const CareerSection({super.key, required this.careerList});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final expandedExpansionIndex = useState<int?>(null);

    return BaseSection(
        title: "Experience",
        titleColor: theme.black,
        backgroundColor: theme.bgWhite,
        child: AnimateOnScroll(
          from: 200,
          animationType: CustomAnimationType.FadeInUp,
          duration: theme.highDuration,
          visibilityKey: const ValueKey("experience_section"),
          child: ExpansionPanelList(
            expandedHeaderPadding: const EdgeInsets.symmetric(vertical: 10),
            expansionCallback: (expandedIndex, _) {
              if (expandedExpansionIndex.value != expandedIndex) {
                expandedExpansionIndex.value = expandedIndex;
              } else {
                expandedExpansionIndex.value = null;
              }
            },
            children: List.generate(careerList.length, (index) {
              final career = careerList[index];
              return ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: (career.descriptions != null && career.descriptions!.isNotEmpty)
                      ? expandedExpansionIndex.value == index
                      : false,
                  headerBuilder: (_, __) => Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "${career.startYear}${career.startYear != null && career.endYear != null ? "-" : ""}${career.endYear ?? ""}",
                              style: AppTextStyles.buttonText1.copyWith(color: theme.black),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              career.jobTitle ?? "",
                              style: AppTextStyles.buttonText1.copyWith(color: theme.black),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              career.location ?? "",
                              style: AppTextStyles.body1.copyWith(color: theme.black),
                            ),
                          ),
                        ],
                      ),
                  body: career.descriptions != null && career.descriptions!.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: List.generate(
                                career.descriptions!.length,
                                (descriptionIndex) => Row(
                                      children: [
                                        const Icon(Octicons.north_star),
                                        const Gap(10),
                                        Expanded(
                                            child: Text(
                                          career.descriptions![descriptionIndex],
                                          style: AppTextStyles.body1.copyWith(color: theme.black),
                                        ))
                                      ],
                                    )).withGap(10),
                          ),
                        )
                      : const SizedBox.shrink());
            }),
          ),
        ));
  }
}
