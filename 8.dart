import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  String? input1 = stdin.readLineSync();
  stdout.write('Enter an operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();
  stdout.write('Enter second number: ');
  String? input2 = stdin.readLineSync();

  if (input1 == null || input2 == null || operator == null ||
      double.tryParse(input1) == null || double.tryParse(input2) == null) {
    print('Invalid input. Please enter valid numbers and operator.');
    return;
  }

  double num1 = double.parse(input1);
  double num2 = double.parse(input2);
  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      print('Result: $num1 + $num2 = $result');
      break;
    case '-':
      result = num1 - num2;
      print('Result: $num1 - $num2 = $result');
      break;
    case '*':
      result = num1 * num2;
      print('Result: $num1 * $num2 = $result');
      break;
    case '/':
      if (num2 == 0) {
        print('Error: Division by zero is not allowed.');
      } else {
        result = num1 / num2;
        print('Result: $num1 / $num2 = $result');
      }
      break;
    default:
      print('Invalid operator. Please use +, -, *, or /.');
  }
}