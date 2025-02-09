import 'dart:io';

import 'package:practice6/practice6.dart' as practice6;

void main(List<String> arguments) {
  // Ask the user for a string and print out whether this string is a palindrome or not.

  stdout.write("Enter a word: ");
  String? input = stdin.readLineSync();

  if (input == null) return;

  // split input into individual chars
  List<String> chars = input.split('');

  // reverse order and join chars
  String reversedInput = chars.reversed.join();

  if (reversedInput.toLowerCase() == input.toLowerCase()) {
    print('$input is a palindrome');
  } else {
    print('$input is NOT a palindrome');
  }
}
