import 'package:flutter/material.dart';
import 'package:islami1/Ui/chapterDetails/chapterDetailsScreen.dart';

import 'Ui/home/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardColor:Colors.white ,
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          )
        ),
        primaryColor: Color(0xFFB7935F),
        secondaryHeaderColor: Colors.black,
        scaffoldBackgroundColor:Colors.transparent ,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
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
          secondary: Color(0x87B7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true
      ),
      routes:{
        HomeScreen.routName:(_)=>HomeScreen(),
        chapterDetailsScreen.routName:(_)=>chapterDetailsScreen()
      } ,
      initialRoute:HomeScreen.routName ,
    );
  }
}