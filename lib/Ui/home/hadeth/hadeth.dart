import 'package:flutter/cupertino.dart';

import '../quran/chapterTitleWidget.dart';

class hadeth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String>hadethnames=[];
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_logo.png')),
        Text('الاحاديث',style: TextStyle(fontSize: 28),),
        /*ListView.separated(
            itemBuilder: (context,index){return chapterTitleWidget(hadethnames[index],index) },
            separatorBuilder: separatorBuilder,
            itemCount: itemCount)*/
      ],
    );
  }
  
}