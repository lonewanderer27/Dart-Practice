import 'package:practice3/practice3.dart' as practice3;
import 'dart:io';

void main(List<String> arguments) {
  // print the numbers that are less than a specific no.
  int? num;
  var nums = [];

  while(true) {
    stdout.write('Enter a no: ');
    int? addNo = int.tryParse(stdin.readLineSync()!);

    if (addNo != null) {
      nums.add(addNo);
    }

    stdout.write('Would you like to add another? [Y/N]: ');
    String? choice = stdin.readLineSync();

    if (choice != null &&
        choice.toLowerCase().contains('n')) {
          break;
        }
  }

  if (nums.isEmpty) {
    print('Adding default numbers:');
    nums.addAll([1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]);
    print(nums);
  }

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
