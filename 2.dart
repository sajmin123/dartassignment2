import 'dart:io';

void main() {
  stdout.write('Enter a single alphabet character: ');
  String? input = stdin.readLineSync();

  if (input == null || input.length != 1 || !RegExp(r'^[a-zA-Z]$').hasMatch(input)) {
    print('Invalid input. Please enter a single alphabet character.');
    return;
  }

  String char = input.toLowerCase();

  if ('aeiou'.contains(char)) {
    print('$char is a vowel.');
  } else {
    print('$char is a consonant.');
  }
}