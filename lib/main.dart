import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:levent_ozkan_personal_website/home_screen.dart';
import 'package:levent_ozkan_personal_website/viewmodels/home_vm.dart';
import 'package:provider/provider.dart';

import 'views/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeVM>(
            create: (context)=>HomeVM()),
      ],
      child: GetMaterialApp(
        title: 'Levent OZKAN',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme()
        ),
        home: SplashScreen(),
      ),
    );
  }
}


