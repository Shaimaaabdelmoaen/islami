import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/home/hadeth/hadethClass.dart';
import 'package:islami1/Ui/myThemeData.dart';
import 'package:islami1/provider/settingsProvider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget{
  static const String routName='HadethDetailsScreen';
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider= Provider.of<settingsProvider>(context);
   return Container(
     decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage(provider.getBackgroundImage()),
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
             style: Theme.of(context).textTheme.bodyMedium
           ),
         ),
       ),


     ),
   ) ;
  }

}