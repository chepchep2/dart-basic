// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  String greeting = 'Hello';
  String greeting2 = 'Hello';

  print(identical(greeting, greeting2));
  print('----------------------------');
  print(greeting.replaceAll('H', 'J'));
  // Jello
  print(greeting);
  // Hello
  print('----------------------------');
  Person person = Person('홍길동');
  Person person2 = Person('홍길동');
  print(person == person2);
  print(identical(person, person2));
}

class Person {
  final String name;

  const Person(this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
