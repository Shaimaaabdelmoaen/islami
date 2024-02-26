
import 'package:flutter/material.dart';

class myThemeData{
  static bool isDarkEnabled=false;
  static Color lightPrimary =Color(0xFFB7935F);
  static Color darkPrimary=Color(0xFF141A2E);
  static Color darkSecondary=Color(0xFFF8C91E);
  static ThemeData lightTheme=ThemeData(
    textTheme:TextTheme(
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black
      ),
      headlineSmall: TextStyle(fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.black),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Colors.black
      )
    ) ,
      cardColor:Colors.white ,
      cardTheme: CardTheme(
          color: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
          )
      ),
      dividerColor:lightPrimary ,
      primaryColor: Color(0xFFB7935F),
      secondaryHeaderColor: Colors.black,
      scaffoldBackgroundColor:Colors.transparent ,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 30
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
            size: 32
        ),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
        primary:Color(0xFFB7935F) ,
        secondary: Color(0xFFB7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: Colors.white
      ),
      useMaterial3: true,
      bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white)
  );
  static ThemeData darkTheme=ThemeData(
      textTheme:TextTheme(
          titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
          headlineSmall: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white
          )
      ) ,
      cardColor:Colors.white ,
      cardTheme: CardTheme(
          color: darkPrimary,
          surfaceTintColor: Colors.transparent,
          elevation: 18,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
          )
      ),
      dividerColor:darkSecondary ,
      primaryColor: darkPrimary,
      secondaryHeaderColor: Colors.black,
      scaffoldBackgroundColor:Colors.transparent ,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 30
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
            size: 32
        ),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: darkPrimary,
        primary:darkPrimary ,
        secondary: darkSecondary,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
          background: darkPrimary
      ),
      useMaterial3: true,
      bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
  )
  );
}