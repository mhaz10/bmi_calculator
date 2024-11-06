import 'package:flutter/material.dart';

import '../constant/colors.dart';

Widget buttonCard (String title, int num, VoidCallback increment, VoidCallback decrement){
  return Container(
    height: 180,
    width: 180,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyColors.secondColor
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text('$num' , style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add, size: 30,),
                backgroundColor: Colors.blue,
                shape: CircleBorder(),
                onPressed: increment),
            FloatingActionButton(
                child: Text('-', style: TextStyle(fontSize: 35),),
                backgroundColor: Colors.blue,
                shape: CircleBorder(),
                onPressed: decrement),
          ],
        )
      ],
    ),
  );
}
