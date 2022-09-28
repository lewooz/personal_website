import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/init/locale_manager/locale_manager.dart';
import 'firebase_options.dart';
import 'core/providers/providers.dart';
import 'core/routing/router.gr.dart';


Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  /*FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };*/
  Paint.enableDithering = true;

 WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final _appRouter = AppRouter();
  final _fireStoreInstance = FirebaseFirestore.instance;
  final container = ProviderContainer();

  runZonedGuarded(
    () async => runApp(
      ProviderScope(
          overrides: [
        routerProvider.overrideWithValue(_appRouter),
        fireStoreProvider.overrideWithValue(_fireStoreInstance),
      ], child: EasyLocalization(
          path: container.read(localeProvider).path,
          supportedLocales: container.read(localeProvider).supportedLocales,
          fallbackLocale: container.read(localeProvider).supportedLocales.first,
          child: await builder())),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class NoOverScrollGlow extends MaterialScrollBehavior {

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

