import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/views/career_section/career_main.dart';
import 'package:levent_ozkan_personal_website/views/header_section/header.dart';
import 'package:levent_ozkan_personal_website/views/personal_section/personal_main.dart';

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
      body: ListView(
        controller: _scrollController,
        children: [
              Header(),
          PersonalMain(),
          Career()
        ],
      ),
    );
  }
}
