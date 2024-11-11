import 'package:flutter/cupertino.dart';

import '../constant/colors.dart';

Widget bottomButton (String title, VoidCallback onTap){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: MyColors.bottomButtonColor
      ),
      child: Center(child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    ),
  );
}