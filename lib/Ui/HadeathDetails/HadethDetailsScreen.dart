import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/home/hadeth/hadethClass.dart';

class HadethDetailsScreen extends StatelessWidget{
  static const String routName='HadethDetailsScreen';
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
   return Container(
     decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage("assets/images/main_background.png"),
             fit: BoxFit.fill
         )
     ),
     child: Scaffold(
       appBar: AppBar(
         title: Text(args.title),
       ),
       body: Card(
         margin: EdgeInsets.symmetric(horizontal: 24,vertical: 48),
         child: SingleChildScrollView(
           child: Text(
             args.content,
             textAlign: TextAlign.center,
             style: TextStyle(
             fontSize: 28,

           ),
           ),
         ),
       ),


     ),
   ) ;
  }

}