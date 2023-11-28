import 'dart:math';

void main(List<String> args) {
  printMessage("Hello, Dart!");

  int result = addNumbers(3, 5);
  print("3 + 5 = $result");

  showInfo("Alice");
  showInfo("Bob", age: 30);

  printInfo("Charlie", 35);

  final int finalValue = Random().nextInt(10);
  print("finalValue: $finalValue");

  const int constValue = 5;
  print("constValue: $constValue");

  final int finalNewValue = finalValue + 5;
  print("finalNewValue: $finalNewValue");
}

void printMessage(String message) {
  print(message);
}

int addNumbers(int a, int b) {
  return a + b;
}

void showInfo(String name, {int? age}) {
  print("Name: $name");
  if (age != null) {
    print("Age: $age");
  }
}

void printInfo(String name, int age) {
  print("Name: $name");
  print("Age: $age");
}
