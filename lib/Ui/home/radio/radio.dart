import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Radios.dart';

class radio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Text('اذاعة القران الكريم',style:TextStyle(fontWeight:FontWeight.w600,color: Theme.of(context).colorScheme.onSecondary,fontSize: 25) ,),
        SizedBox(
          height: MediaQuery.of(context).size.height*.3,
          child: ListView.builder(
            physics:PageScrollPhysics() ,
            scrollDirection:Axis.horizontal ,
            itemBuilder: (context,index)=>radioItem(),
          itemCount: 3,
          ),
        )
      ],

    );
  }


}

class radioItem extends StatelessWidget {
  const radioItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [Text('اسم الشيخ',style:TextStyle(fontWeight:FontWeight.w600,color: Theme.of(context).colorScheme.onSecondary,fontSize: 25) ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,size: 40,color: Theme.of(context).colorScheme.secondary,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.stop,size: 40,color: Theme.of(context).colorScheme.secondary,))
      
            ],
          )],
      ),
    );
  }
}