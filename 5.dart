import 'dart:io';


void main() {
  stdout.write('Enter a positive integer: ');
  String? input = stdin.readLineSync();

  if (input == null || int.tryParse(input) == null || int.parse(input) <= 0) {
    print('Invalid input. Please enter a positive integer.');
    return;
  }

  int n = int.parse(input);
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    sum += i;
  }

  print('The sum of the first $n natural numbers is $sum.');
}