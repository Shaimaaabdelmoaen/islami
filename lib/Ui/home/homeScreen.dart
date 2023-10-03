import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/home/hadeth/hadeth.dart';
import 'package:islami1/Ui/home/quran/quran.dart';
import 'package:islami1/Ui/home/radio/radio.dart';
import 'package:islami1/Ui/home/tasbeh/tasbeh.dart';

class HomeScreen extends StatefulWidget{
  static const String routName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectTapIndex=0;
  List<Widget>taps=[
    quran(),
    tasbeh(),
    radio(),
    hadeth(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
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
              //backgroundColor: Colors.red,
                icon:ImageIcon(AssetImage("assets/images/icon_quran.png")),label:"Quran" ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label:"Hadeth" ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_radio.png")),label:"Radio" ),
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,
                icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")),label:"Sebha" )


          ],
        ) ,
        body:taps[selectTapIndex] ,

      ),
    );
  }
}