void main() {
  print(9.hashCode);
  print(10.hashCode);
  print(11.hashCode);

  print("a".hashCode);
  print('b'.hashCode);

  // final numSet = {10, 10, 10};
  // print(numSet.length);

  print(Person('a').hashCode);
  print(Person('a').hashCode);
}

class Person {
  String name;

  Person(this.name);
}
