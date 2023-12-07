// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  print('a' == 'a');
  print(Person('a', 10) == Person('a', 10));

  final p1 = Person('a', 10);

  final clone = Person(p1.name, p1.age);

  print(p1 == clone);

  final p2 = p1.copywith();
  print(p1 == p2);

  final p3 = p1.copywith(name: 'b');
  print(p3);
}

class Person {
  String name;
  int age;
  Person(
    this.name,
    this.age,
  );

  Person copywith({
    String? name,
    int? age,
  }) {
    return Person(
      name ?? this.name,
      age ?? this.age,
    );
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
