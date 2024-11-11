import 'dart:math';

class Calculate {
  final double height;
  final int weight;

  Calculate({required this.height, required this.weight});

  late double result;

  String calculate (){
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  String getResult() {
    if (result >= 25) {
      return 'Overweight';
    } else if (result > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (result >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (result >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}