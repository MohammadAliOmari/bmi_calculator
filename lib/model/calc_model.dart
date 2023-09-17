import 'dart:math';

class CalcBmi {
  CalcBmi({
    required this.height,
    required this.weight,
  });

  final double height;
  final int weight;

  late double result;

  int resultBmi() {
    result = weight / pow(height / 100, 2);
    return result.round();
  }

  String getStatus() {
    if (result >= 25) {
      return 'Overweight';
    } else if (result > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpret() {
    if (result >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (result > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
