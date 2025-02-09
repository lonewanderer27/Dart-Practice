import 'package:practice7/practice7.dart' as practice7;

void main(List<String> arguments) {
  // Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  var evenA = a.where((n) => n % 2 == 0).toList();
  var oddA = a.where((n) => n % 2 == 1).toList();

  print("Even numbers:");
  print(evenA);

  print("Odd numbers:");
  print(oddA);
}
