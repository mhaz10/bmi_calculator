import 'package:flutter/material.dart';

import '../constant/colors.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map result = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios));
            },),
        backgroundColor: MyColors.secondColor,
        title: const Text(
          'Result',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColors.secondColor
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${result['result']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green),),
                Text("${result['calculate']}" , style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                Text("${result['Interpretation']}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
