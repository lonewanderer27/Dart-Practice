import 'package:practice5/practice5.dart' as practice5;

void main(List<String> arguments) {
  var arrayA = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var arrayB = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> commonNums = [];

  for (int i = 0; i < arrayA.length; i++) {
    for (int j = 0; j < arrayB.length; j++) {
      int a = arrayA[i], b = arrayB[j];
      // if the item from the 1st array
      // matches an item from the 2nd array
      if (a == b) {
        // check if the item is already in the commonNums array
        if (!commonNums.contains(a)) {
          commonNums.add(a);
        }
      }
    }
  }

  print("These are the common numbers in two lists:");
  print(commonNums);
}

