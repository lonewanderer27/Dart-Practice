import 'dart:io';

import 'package:practice4/practice4.dart' as practice4;

// Create a program that asks the user for a number and then 
// prints out a list of all the divisors of that number.

void main(List<String> arguments) {
  // ask user a number
  stdout.write("Give me a number: ");
  int? num = int.tryParse(stdin.readLineSync()!);

  if (num == null || num <= 0) return;

  // loop up until that number
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      print('$i is a divisor of $num');
    }
  }
}
