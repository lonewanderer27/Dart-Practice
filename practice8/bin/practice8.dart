import 'dart:io';
import 'dart:math';
import 'package:practice8/practice8.dart' as practice8;

void main(List<String> arguments) {
  int points = 0;
  int aiPoints = 0;
  List<String> choices = ['r', 'p', 's'];
  while (true) {
    bool aiWon = false, userWon = false;
    print('Your score: $points | AI score: $aiPoints');
    stdout.write('Rock [r], paper [p] or scissors[s] or Quit[q]: ');
    String? userChoice = stdin.readLineSync();

    if (userChoice == null) break;
    // computer pick
    String aiChoice = choices[Random().nextInt(choices.length)];

    // if the ai and the user tie
    if (aiChoice == userChoice) {
      print(
          'It' 's a tie! You both chose ${practice8.getChoice(userChoice)}\n');
      aiWon = false;
      userWon = false;
      continue;
    }

    switch (userChoice) {
      case 'r':
        {
          // r -> p = 0
          if (aiChoice == 'p') {
            aiWon = true;
            aiPoints++;
          }
          // r -> s = 1
          if (aiChoice == 's') {
            userWon = true;
            points++;
          }
        }
      case 'p':
        {
          // p -> r = 1
          if (aiChoice == 'r') {
            userWon = true;
            points++;
          }
          // p -> s = 0
          if (aiChoice == 's') {
            aiWon = true;
            aiPoints++;
          }
        }
      case 's':
        {
          // s -> r = 0
          if (aiChoice == 'r') {
            aiWon = true;
            aiPoints++;
          }
          // s -> p = 1
          if (aiChoice == 'r') {
            userWon = true;
            points++;
          }
        }
    }

    if (userWon) print('You won! AI chose ${practice8.getChoice(aiChoice)}\n');
    if (aiWon) print('You lost! AI chose ${practice8.getChoice(aiChoice)}\n');
  }

  print('Thank you for playing!');
}
