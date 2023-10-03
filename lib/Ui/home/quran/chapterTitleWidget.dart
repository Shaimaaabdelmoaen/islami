import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/chapterDetails/chapterDetailsScreen.dart';

class chapterTitleWidget extends StatelessWidget{
  String title;
  int index;
  chapterTitleWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context)
            .pushNamed(chapterDetailsScreen.routName,arguments: chapterDetailsArgs(title, index));

      },
      child: Container(
        alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(title,style: TextStyle(
            fontSize: 25
          ),)
      ),
    );
  }
  
}