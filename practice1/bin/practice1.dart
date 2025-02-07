import 'package:practice1/practice1.dart' as practice1;
import 'dart:io';

// Create a program that asks the user to enter their name and their age. 
// Print out a message that tells how many years they have to be 100 years old.

void main(List<String> arguments) {
  int? age;
  int ageBefore100;
  String? name;

  // ask the user
  stdout.write("What is your name? ");
  name = stdin.readLineSync();

  if (name == null) {
    print("You have not entered a name");
    return;
  }

  stdout.write("What is your age? ");
  age = int.tryParse(stdin.readLineSync()!);


  if (age == null) {
    print("You have not entered a name");
    return;
  }

  ageBefore100 = 100 - age;

  print('$name, you have $ageBefore100 years before 100 years old!');
}
