import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/home/hadeth/hadeth.dart';
import 'package:islami1/Ui/home/quran/quran.dart';
import 'package:islami1/Ui/home/radio/radio.dart';
import 'package:islami1/Ui/home/settings/settingsTap.dart';
import 'package:islami1/Ui/home/tasbeh/tasbeh.dart';
import 'package:islami1/Ui/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami1/provider/settingsProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget{
  static const String routName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectTapIndex=0;
  List<Widget>taps=[
    quran(),
    hadeth(),
    radio(),
    tasbeh(),
    settingsTap(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<settingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackgroundImage()),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)?.app_name??''
          ),
        ),
        bottomNavigationBar:BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectTapIndex=index;
            });
          },
          currentIndex:selectTapIndex ,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_quran.png")),label:AppLocalizations.of(context)?.quran??'' ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label:AppLocalizations.of(context)?.hadeth??'' ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_radio.png")),label:AppLocalizations.of(context)?.radio??'' ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")),label:AppLocalizations.of(context)?.tasbeh??'' ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:Icon(Icons.settings),label: "settings")


          ],
        ) ,
        body:taps[selectTapIndex] ,

      ),
    );
  }
}