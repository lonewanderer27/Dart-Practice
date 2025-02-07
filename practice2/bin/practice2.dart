import 'package:practice2/practice2.dart' as practice2;
import 'dart:io';

// Ask the user for a number. Depending on whether the number is even or odd, 
// print out an appropriate message to the user.

void main(List<String> arguments) {
  int? number;

  stdout.write("Give me a number: ");
  number = int.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print("You have not entered a number");
    return;
  }

  if (number % 2 == 0) {
    print("Why was the even number so calm?\nBecause it always knew how to stay balanced! 😆");
  }

  print("Why did the odd number break up with the even number?\nBecause it felt like it just didn’t fit in! 😆");
}
