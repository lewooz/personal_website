import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class _LocaleManager{
  final enLocale = const Locale('en');
  final String path = "assets/lang";

  List<Locale> get supportedLocales => [enLocale];
}

final localeProvider = Provider((_) => _LocaleManager());

