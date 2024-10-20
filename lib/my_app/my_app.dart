import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app/presentation/screens/home/home_screen.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/Quran_details_screen.dart';
import 'package:quran_app/presentation/screens/splash_screen/splash_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      routes: {
        RoutesManager.splashRoute: (context) => const SplashScreen(),
        RoutesManager.homeRoute: (context) => HomeScreen(),
        RoutesManager.quranDetailsRoute: (context) => QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoute: (context) => HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
