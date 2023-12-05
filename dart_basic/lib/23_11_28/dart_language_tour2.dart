void main(List<String> args) {
  int number = 42;

  if (number > 50) {
    print("number is greater than 50");
  } else {
    print("number is less than or equal to 50");
  }

  String fruit = "apple";

  switch (fruit) {
    case "apple":
      print("this is apple");
      break;
    case "banana":
      print("this is banana");
      break;
    default:
      print("this is not a fruit");
  }

  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }

  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 3);

  int add(int a, int b) {
    return a + b;
  }

  int multiply(int a, int b) => a * b;

  var numbers1 = [1, 2, 3, 4, 5];
  numbers1.where((element) => element.isEven).forEach(print);
}
