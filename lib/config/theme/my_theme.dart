import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        color: ColorsManager.goldenColor.withOpacity(.7),
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      primaryColor: ColorsManager.goldenColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          )),
      dividerColor: ColorsManager.goldenColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.goldenColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0xff242424),
        ),
      ));
}
