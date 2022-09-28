import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/extensions/context_extensions.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/app_contents_model.dart';
import 'package:levent_ozkan_personal_website/core/init/theme_manager/theme_manager.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/about_me/about_me_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/career/career_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/education/education_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/footer/footer_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/header/header_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/personal_info/personal_info_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/projects/projects_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/sections/tech_stack/tech_stack_section.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/viewmodel/main_viewmodel.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/widgets/top_bar.dart';
import 'package:levent_ozkan_personal_website/ui/shared/widgets/base_async_provider_widget.dart';
import 'package:lottie/lottie.dart';

class MainPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appContentsProvider = ref.watch(appContentsFutureProvider);
    final _theme = ref.watch(themeProvider);
    final _scrollController = ref.watch(mainVMProvider.select((value) => value.scrollController));

    return Scaffold(
      backgroundColor: _theme.scaffoldBackground,
      body: SizedBox.expand(
        child: BaseAsyncProviderWidget(
          value: appContentsProvider,
          loadingWidget: Center(
            child: Lottie.asset("assets/lottie/splash_anim.json",
                height: context.dynamicHeight(0.5), fit: BoxFit.contain),
          ),
          builder: (AppContentsModel appContentsModel) {
            final List<Widget> mainPageWidgetList = [
              HeaderSection(
                headerSectionModel: appContentsModel.header,
              ),
              PersonalInfoSection(personalInfoSectionModel: appContentsModel.personalInfo,),
              EducationSection(
                educationList: appContentsModel.education,
              ),
              CareerSection(careerList: appContentsModel.career),
              AboutMeSection(texts: appContentsModel.developer,),
              ProjectsSection(myProjects: appContentsModel.myProjects,),
              TechStackSection(techStackList: appContentsModel.techStack,),
              const FooterSection()
            ];
            return Stack(
              children: [
                NotificationListener<UserScrollNotification>(
                  onNotification: ref.read(mainVMProvider).onScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: mainPageWidgetList.length,
                    itemBuilder: (BuildContext context, int index) => mainPageWidgetList[index],
                  ),
                ),
                TopBar(centerImageUrl: appContentsModel.header.profilePhoto)
              ],
            );
          },
        ),
      ),
    );
  }
}
