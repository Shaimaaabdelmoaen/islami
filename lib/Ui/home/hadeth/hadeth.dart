import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../quran/chapterTitleWidget.dart';
import 'HadethTitleWidget.dart';
import 'hadethClass.dart';

class hadeth extends StatefulWidget{
  @override
  State<hadeth> createState() => _hadethState();
}

class _hadethState extends State<hadeth> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty)
    loadHadethFile();
    return Column(
      children: [
        Expanded(
          flex:1,
          child: Image.asset('assets/images/hadeth_logo.png')
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(border: Border.symmetric(horizontal: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2
          ))),
            child: Text('الاحاديث',style: TextStyle(fontSize: 28),)),
        Expanded(
          flex:3,
          child:
          allAhadeth.isEmpty?Center(child: CircularProgressIndicator(),)
          :ListView.separated(
              itemBuilder: (context,index){
                return HadethTitleWidget(allAhadeth[index]);
              },
              separatorBuilder: (context,index)=>
                  Container(color: Theme.of(context).dividerColor,
                    width: double.infinity,
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  ),
              itemCount: allAhadeth.length),
        )
      ],
    );
  }

  List<Hadeth>allAhadeth=[];

  void loadHadethFile()async{
    String fileContent= await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>hadethList=fileContent.trim().split('#');
    for(int i=0;i<hadethList.length;i++){
      String singleHadeth=hadethList[i];
      List<String>hadethLines=singleHadeth.trim().split('\n');
      String title=hadethLines[0];
      hadethLines.remove(0);
      String content=hadethLines.join('\n');
      Hadeth hadeth=Hadeth(title, content);
      allAhadeth.add(hadeth);
    }
    setState(() {

    });
  }
}