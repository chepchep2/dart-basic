void main() {
  final List<int> nums = [2, 1, 4, 3, 6, 5];

  nums.sort((a, b) => a.compareTo(b));
  print(nums);

  final List<String> names = ['홍길동', '김두한', '이순신'];
  names.sort();
  print(names);

  final List<Person> people = [
    Person('홍길동', 10),
    Person('김두한', 5),
    Person('홍길동', 100),
  ];

  // people.sort();
  // 그냥 바로 하면 터진다.
  // print(people);
  people.sort();
  print(people);

  /// sort를 하기위해선 기본적인 규칙들이 있다.
  /// Comparator
  ///   : sort((a, b) => a.compareTo(b));
  ///   a가 b보다 작으면 음수 (-1)
  ///   같으면 0
  ///   a가 b보다 크면 양수 (+1)
  ///
  nums.sort(((a, b) {
    if (a > b) {
      return 1;
    } else if (b > a) {
      return -1;
    } else {
      return 0;
    }
  }));
  print(nums);
}

class Person implements Comparable<Person> {
  String name;
  int age;

  Person(
    this.name,
    this.age,
  );
  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }

  @override
  int compareTo(Person other) {
    // return name.compareTo(other.name);
    final nameEqual = name.compareTo(other.name);

    if (nameEqual == 0) {
      return age.compareTo(other.age);
    }

    return nameEqual;
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
}
