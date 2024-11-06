import 'package:flutter/material.dart';

import '../constant/colors.dart';

Widget genderButton (String text, IconData icon, VoidCallback onTap, Color color){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: MyColors.secondColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, size: 100, color: color,),
          const SizedBox(height: 5,),
          Text(text,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: color),)
        ],
      ),
    ) ,
  );
}