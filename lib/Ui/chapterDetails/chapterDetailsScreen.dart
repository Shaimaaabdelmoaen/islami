import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami1/Ui/chapterDetails/verseWidget.dart';
import 'package:islami1/Ui/myThemeData.dart';
import 'package:islami1/provider/settingsProvider.dart';
import 'package:provider/provider.dart';

class chapterDetailsScreen extends StatefulWidget{
  static const String routName='chapterDetailsScreen';

  @override
  State<chapterDetailsScreen> createState() => _chapterDetailsScreenState();
}

class _chapterDetailsScreenState extends State<chapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    chapterDetailsArgs args=ModalRoute.of(context)?.settings.arguments as chapterDetailsArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }
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
          title: Text(args.title),
        ),
        body:verses.isEmpty?Center(child: CircularProgressIndicator(),):
        Card(
          margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
          child: ListView.separated(itemBuilder: (context,index){
            return verseWidget(verses[index],index);
          },
            itemCount: verses.length,
            separatorBuilder: (context,index)=>
                Container(color: Theme.of(context).dividerColor,
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 64),
                ),
          ),
        )

      ),
    );
  }

  List<String>verses=[];

  void loadFile(int index) async {
    String fileContent =await rootBundle.loadString('assets/files/${index+1}.txt');
    verses=fileContent.trim().split("\n");
    setState(() {

    });
  }
}
class chapterDetailsArgs{
  String title;
  int index;
  chapterDetailsArgs(this.title,this.index);
}