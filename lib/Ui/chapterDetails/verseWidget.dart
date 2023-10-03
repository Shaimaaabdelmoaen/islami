import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/chapterDetails/chapterDetailsScreen.dart';

class verseWidget extends StatelessWidget{
  String content;
  int index;
  verseWidget(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Text('$content{${index+1}}',
          //textDirection: TextDecoration.rtl,
          textAlign: TextAlign.center
          ,style: TextStyle(
            fontSize: 20
        ),)
    );
  }

}