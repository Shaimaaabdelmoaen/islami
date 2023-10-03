import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tasbeh extends StatefulWidget{
  @override
  State<tasbeh> createState() => _tasbehState();
}

class _tasbehState extends State<tasbeh> {
  int num=0;
  String numText='0';
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset('assets/images/head_sebha_logo.png'),
          Image.asset('assets/images/body_sebha_logo.png'),
          Text('عدد التسبيحات',style: TextStyle(fontSize: 30),),
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Theme.of(context).primaryColor),
            child: Text(numText,style: TextStyle(fontSize: 28),),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
              onPressed: (){
                setState(() {
                  num++;
                  numText=num.toString();
                });
              },
              child:Text('سبحان الله',style: TextStyle(color: Colors.white,fontSize: 30)),
          )
        ],
      ),
    );
  }
}