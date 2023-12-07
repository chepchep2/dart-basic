void main() {
  print(9.hashCode);
  print(10.hashCode);
  print(11.hashCode);

  print("a".hashCode);
  print('b'.hashCode);

  // final numSet = {10, 10, 10};
  // print(numSet.length);

  print(Person('a', 10).hashCode);
  print(Person('a', 10).hashCode);
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
