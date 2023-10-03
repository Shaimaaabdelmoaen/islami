import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset('assets/images/radio_image.png')),
        Expanded(child: Text('اذاعة القران الكريم',style: TextStyle(fontSize: 28),),)
      ],
    );
  }

}