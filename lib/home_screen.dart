import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/viewmodels/home_vm.dart';
import 'package:levent_ozkan_personal_website/views/career_section/career_main.dart';
import 'package:levent_ozkan_personal_website/views/courses_section/courses_main.dart';
import 'package:levent_ozkan_personal_website/views/developer_section/developer_main.dart';
import 'package:levent_ozkan_personal_website/views/developer_section/my_projects.dart';
import 'package:levent_ozkan_personal_website/views/education_section/education_main.dart';
import 'package:levent_ozkan_personal_website/views/footer_section/footer_main.dart';
import 'package:levent_ozkan_personal_website/views/header_section/header.dart';
import 'package:levent_ozkan_personal_website/views/hobbies_section/hobbies_main.dart';
import 'package:levent_ozkan_personal_website/views/languages_section/languages_main.dart';
import 'package:levent_ozkan_personal_website/views/personal_section/personal_main.dart';
import 'package:levent_ozkan_personal_website/views/tech_stack_section/techstack_main.dart';
import 'package:levent_ozkan_personal_website/views/widgets/custom_draggable.dart';
import 'package:levent_ozkan_personal_website/views/widgets/fancy_fab.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'views/personal_section/personal_main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
              itemCount: 11,
              itemScrollController: context.watch<HomeVM>().itemScrollController,
              itemBuilder: (BuildContext context, int index) => renderContent(index),
          ),
          CustomDraggable(
            child: FancyFab(),
          ),
        ],
      ),
    );
  }
  renderContent(int index) {
    switch (index) {
      case 0:
        return Header();
      case 1:
        return PersonalMain();
      case 2:
        return Education();
      case 3:
        return Career();
      case 4:
        return Developer();
      case 5:
        return MyProjects();
      case 6:
        return TechStackMain();
      case 7:
        return CoursesMain();
      case 8:
        return HobbiesMain();
      case 9:
        return LanguagesMain();
      case 10:
        return FooterMain();
    }
  }

}
