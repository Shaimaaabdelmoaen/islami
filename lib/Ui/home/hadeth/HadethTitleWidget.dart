import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/HadeathDetails/HadethDetailsScreen.dart';
import 'package:islami1/Ui/chapterDetails/chapterDetailsScreen.dart';
import 'package:islami1/Ui/home/hadeth/hadethClass.dart';

class HadethTitleWidget extends StatelessWidget{
  Hadeth hadeth;
  HadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetailsScreen.routName,arguments: hadeth);

      },
      child: Container(
        alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(hadeth.title,style: TextStyle(
            fontSize: 25
          ),)
      ),
    );
  }
  
}