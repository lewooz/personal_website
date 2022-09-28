import 'package:auto_route/auto_route.dart';
import 'package:levent_ozkan_personal_website/ui/pages/main/main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage, initial: true),
  ],
)

class $AppRouter {}