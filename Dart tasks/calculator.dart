//calculates the result of two numbers based on the user's input
//Calculator class ; methods---for addition,subtraction,multiplication,division
//try and catch to handle the zero division error
//print the result after a 5 sec delay

import 'dart:io';

class Calculator {
  late double a;
  late double b;
  Calculator(double a, double b) {
    this.a = a;
    this.b = b;
  }

  double addition() {
    double sum = this.a + this.b;
    return sum;
  }

  double subtraction() {
    double reduction = a - b;
    return reduction;
  }

  double multiplication() {
    double product = this.a * this.b;
    return product;
  }

  double division() {
    try {
      double divide = this.a / this.b;
      return divide;
    } catch (err) {
      print(err);
      return 0;
    }
  }

  void display() async {
    await Future.delayed(
        Duration(seconds: 5), () => print("Addition: ${this.addition()}"));
    await Future.delayed(Duration(seconds: 5),
        () => print("Subtraction: ${this.subtraction()}"));
    await Future.delayed(Duration(seconds: 5),
        () => print("Multiplication: ${this.multiplication()}"));
    await Future.delayed(
        Duration(seconds: 5), () => print("Division: ${this.division()}"));
  }
}

void main() {
  stdout.write("Enter two numbers: ");
  String no1 = stdin.readLineSync()!;
  String no2 = stdin.readLineSync()!;
  double num1 = double.parse(no1);
  double num2 = double.parse(no2);
  Calculator numbers = Calculator(num1, num2);
  numbers.display();
}
