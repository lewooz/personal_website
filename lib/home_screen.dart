import 'package:flutter/material.dart';
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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController;

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
          ListView(
            controller: _scrollController,
            children: [
              Header(),
              PersonalMain(),
              Education(),
              Career(),
              Developer(),
              MyProjects(),
              TechStackMain(),
              CoursesMain(),
              HobbiesMain(),
              LanguagesMain(),
              FooterMain()
            ],
          ),
          CustomDraggable(
            child: FancyFab(),
          ),
        ],
      ),
    );
  }
}
