import 'package:bmi_calculator/constant/colors.dart';
import 'package:bmi_calculator/widgets/gender_button.dart';
import 'package:flutter/material.dart';
import '../widgets/button_card.dart';

enum Gender {
  male,
  female
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? selectGender;
  double height = 150;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.secondColor,
        title: const Center(
          child: Text(
            'BMI calculator',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  genderButton(
                      'FEMALE',
                      Icons.female,
                      (){
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      selectGender == Gender.female
                          ? MyColors.primaryColor
                          : Colors.white
                  ),
                  const SizedBox(width: 10,),
                  genderButton(
                      'MALE',
                      Icons.male,
                          (){
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      selectGender == Gender.male
                          ? MyColors.primaryColor
                          : Colors.white
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                   height: 150,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: MyColors.secondColor
                   ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${height.toStringAsFixed(0)}', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 6,),
                          const Text('CM')
                        ],
                      ),
                      Slider(
                          value: height,
                          min: 120,
                          max: 220,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          })
                    ],
                  ),
                ),
              )),
          Expanded(
            child: Row(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }
}
