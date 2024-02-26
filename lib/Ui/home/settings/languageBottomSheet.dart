import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class languageBottomSheet extends StatefulWidget{
  @override
  State<languageBottomSheet> createState() => _languageBottomSheetState();
}

class _languageBottomSheetState extends State<languageBottomSheet> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem("English"),
          getunSelectedItem("العربية"),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:Theme.of(context).colorScheme.secondary)),
        Icon(Icons.check,color: Theme.of(context).primaryColor,)
      ],
    );

  }

  Widget getunSelectedItem(String text){
    return Text(text,
      style: TextStyle(
          fontSize: 20
      ),);

  }
}