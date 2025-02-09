import 'dart:io';

int calculate() {
  return 6 * 7;
}

String getChoice(String choice) {
  switch (choice) {
    case 'r':
      return 'rock!';
    case 'p':
      return 'paper!';
    case 's':
      return 'scissor!';
    default: return '';
  }
}
