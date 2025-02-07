import 'package:practice3/practice3.dart' as practice3;
import 'dart:io';

void main(List<String> arguments) {
  // print the numbers that are less than 5, or specific no.

  var nums = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  print('These are the nums that are less than 5');
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] < 5) {
      print(nums[i]);
    }
  }
}
