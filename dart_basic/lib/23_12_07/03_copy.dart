// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  print('a' == 'a');
  print(Person(name: 'a', age: 10) == Person(name: 'a', age: 10));

  final p1 = Person(name: 'a', age: 10);

  final clone = Person(name: p1.name, age: p1.age);

  print(p1 == clone);

  final p2 = p1.copywith();
  print(p1 == p2);

  final p3 = p1.copywith(name: 'b');
  print(p3);
}

class Person {
  String name;
  int age;
  Person({
    required this.name,
    required this.age,
  });

  Person copywith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
