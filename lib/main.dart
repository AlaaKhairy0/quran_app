import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/my_app/my_app.dart';
import 'package:quran_app/provider/language_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider()..getTheme(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider()..getLanguage(),
    ),
  ], child: const MyApp()));
}
