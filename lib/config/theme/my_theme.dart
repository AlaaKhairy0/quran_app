import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      iconTheme: const IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      indicatorColor: Colors.white,
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        color: ColorsManager.lightPrimary.withOpacity(.7),
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      primaryColor: ColorsManager.lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          headlineSmall: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          labelSmall: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          labelMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          )),
      dividerColor: ColorsManager.lightPrimary,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 34),
        unselectedIconTheme: IconThemeData(size: 34),
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.lightPrimary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 28,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0xff242424),
        ),
      ));
  static ThemeData darkTheme = ThemeData(
      indicatorColor: ColorsManager.yellow,
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        color: ColorsManager.darkPrimary,
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      primaryColor: ColorsManager.darkPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        size: 28,
        color: ColorsManager.yellow,
      ),
      textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            color: ColorsManager.yellow,
            fontWeight: FontWeight.w600,
          ),
          labelSmall: TextStyle(
            fontSize: 22,
            color: Color(0xFFF8F8F8),
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
          bodyMedium: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          labelMedium: TextStyle(
            color: Color(0xFFF8F8F8),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          )),
      dividerColor: ColorsManager.yellow,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 34),
        unselectedIconTheme: IconThemeData(size: 34),
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.darkPrimary,
        selectedItemColor: ColorsManager.yellow,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0xffF8F8F8),
        ),
      ));
}
