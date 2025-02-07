import 'package:practice3/practice3.dart' as practice3;
import 'dart:io';

void main(List<String> arguments) {
  // print the numbers that are less than 5, or specific no.
  int? num;
  var nums = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  stdout.write("Give me a number to compare it to: ");
  num = int.tryParse(stdin.readLineSync()!);

  num ??= 5;

  print('These are the nums that are less than $num');
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] < num) {
      stdout.write('${nums[i]}${ i+1 < nums.length ? ", " : "" }');
    }
  }
}
