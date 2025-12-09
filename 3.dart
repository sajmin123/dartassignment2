import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input == null || double.tryParse(input) == null) {
    print('Invalid input. Please enter a valid number.');
    return;
  }

  double number = double.parse(input);

  if (number > 0) {
    print('$number is positive.');
  } else if (number < 0) {
    print('$number is negative.');
  } else {
    print('The number is zero.');
  }
}