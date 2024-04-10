import 'dart:math';

class BMICalculator {
  final double height;
  final int weight;
  double BMI = 0;
  BMICalculator({required this.height, required this.weight}) {
    calculateBMI();
  }

  String calculateBMI() {
    BMI = weight / pow(height / 100, 2);
    return BMI.toStringAsFixed(1);
  }

  String getInterpretation() {
    return (BMI < 18.5)
        ? 'Your body weight is a bit lower than the recommended weight, treat yourself to your favorite food or try lifting weights to gain muscle mass'
        : (BMI <= 24.9)
            ? 'Your body weight is exactly where it should be, keep on keeping on!'
            : (BMI <= 29.9)
                ? 'Your body weight is currently higher than the recommended weight. Consider some small changes such as taking the stairs over the elevator.'
                : 'Your body weight is much more higher than the recommended weight. eat a healthy, reduced-calorie diet and exercise regularly.';
  }

  String getResult() {
    return (BMI < 18.5)
        ? 'Underweight'.toUpperCase()
        : (BMI <= 24.9)
            ? 'Normal'.toUpperCase()
            : (BMI <= 29.9)
                ? 'Overweight'.toUpperCase()
                : 'Obesity'.toUpperCase();
  }
}
