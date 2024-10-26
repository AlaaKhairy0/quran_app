import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app/presentation/screens/home/home_screen.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/Quran_details_screen.dart';
import 'package:quran_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:quran_app/provider/language_provider.dart';
import 'package:quran_app/provider/quran_provider.dart';
import 'package:quran_app/provider/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //SettingsProvider myProvider = Provider.of(context);
    ThemeProvider themeProvider = Provider.of(context);
    LanguageProvider languageProvider = Provider.of(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.currentLang),
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      routes: {
        RoutesManager.splashRoute: (context) => const SplashScreen(),
        RoutesManager.homeRoute: (context) => HomeScreen(),
        RoutesManager.quranDetailsRoute: (context) => ChangeNotifierProvider(
            create: (context) => QuranProvider(), child: QuranDetailsScreen()),
        RoutesManager.hadithDetailsRoute: (context) => HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}