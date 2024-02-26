import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami1/Ui/HadeathDetails/HadethDetailsScreen.dart';
import 'package:islami1/Ui/chapterDetails/chapterDetailsScreen.dart';
import 'package:islami1/Ui/myThemeData.dart';
import 'package:islami1/provider/settingsProvider.dart';
import 'package:provider/provider.dart';
import 'Ui/home/homeScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(buildContext)=>settingsProvider() ,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    settingsProvider SettingsProvider=
    Provider.of<settingsProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode: SettingsProvider.currentTheme,
      routes:{
        HomeScreen.routName:(_)=>HomeScreen(),
        chapterDetailsScreen.routName:(_)=>chapterDetailsScreen(),
        HadethDetailsScreen.routName:(_)=>HadethDetailsScreen(),
      } ,
      initialRoute:HomeScreen.routName ,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale('en'),
    );
  }
}