import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/enums/app_type.dart';
import 'package:levent_ozkan_personal_website/core/extensions/list_extensions.dart';
import 'package:levent_ozkan_personal_website/core/extensions/string_extensions.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/shared/hooks/use_responsive.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/enums/app_images.dart';
import '../../../../../core/global_models/app_contents_model/my_projects_section/my_projects_section_model.dart';
import '../../../../shared/widgets/base_section.dart';

part './widgets/download_links.dart';
part './widgets/project.dart';

class ProjectsSection extends HookConsumerWidget {
  final List<MyProjectsSectionModel> myProjects;

  const ProjectsSection({super.key, required this.myProjects});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final personalProjects = myProjects.where((element) => element.type == AppType.personal).toList();
    final professionalProjects = myProjects.where((element) => element.type == AppType.professional).toList();

    return BaseSection(
      backgroundColor: theme.bgWhite,
      child: Column(
        children: [
          Text("Professional projects", style: AppTextStyles.h2.copyWith(color: theme.secondaryColor),),
          const Gap(20),
          Column(
            children: List.generate(
              professionalProjects.length,
              (index) {
                final project = professionalProjects[index];
                return _Project(project: project);
              },
            ).withGap(20),
          ),
          const Gap(20),
          Text("Side projects", style: AppTextStyles.h2.copyWith(color: theme.secondaryColor),),
          const Gap(20),
          Column(
            children: List.generate(
              personalProjects.length,
                  (index) {
                final project = personalProjects[index];
                return _Project(project: project);
              },
            ).withGap(20),
          ),
        ],
      ),
    );
  }
}
