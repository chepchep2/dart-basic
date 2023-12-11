// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'dart:io';

void main() {
  final json = {
    "name": "John Smith",
    "email": "john@example.com",
    "age": 10,
  };

  print(json.runtimeType);
  print('-----------------------');

  final user = User(name: 'aaa', email: 'email', age: 30);
  print(user.toJson());

  print('-----------------------');
  User user2 = User.fromJson({
    'name': '배트맨',
    'email': 'batman',
    'age': 10,
  });

  print(user2.toJson());
  print('-----------------------');

  File file = File('user.txt');
  file.writeAsStringSync(jsonEncode(user2.toJson()));

  file.writeAsStringSync(jsonEncode(user2.toJson()), mode: FileMode.append);

  String userJson = file.readAsStringSync();
  print(userJson);

  print('-----------------------');
  User user3 = User.fromJson(jsonDecode(userJson));
  print(user3.toString());
}

class User {
  String name;
  String email;
  int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      age: map['age'] ?? 0,
    );
  }

  @override
  String toString() => 'User(name: $name, email: $email, age: $age)';
}
