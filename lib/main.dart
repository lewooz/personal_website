import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/ui/shared/styles/theme.dart';
import 'bootstrap.dart';
import 'core/providers/providers.dart';

void main() async {
  await bootstrap(() => MyApp());
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeStyle = ref.watch(themeStyleProvider);
    final _appRouter = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Levent OZKAN',
      debugShowCheckedModeBanner: false,
      theme: themeStyle.appTheme,
      scrollBehavior: NoOverScrollGlow(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
