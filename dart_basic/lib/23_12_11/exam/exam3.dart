// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'dart:io';

/// 다음과 같은 사원 클래스와 부서 클래스가 있습니다.
/// class Employee {
///   String name;
///   int age;
///
///   Employee(this.name, this.age);
/// }
/// class Department {
///   String name;
///   Employee leader;
///
///   Department(this.name, this.leader);
/// }
/// 총무무 리더 '홍길동(41세)'의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
/// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      map['name'],
      map['age'] ?? 0,
    );
  }
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'leader': leader.toJson(),
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      map['name'],
      Employee.fromJson(map['leader']),
    );
  }

  @override
  String toString() {
    return 'User{name: $name, leader:$leader}';
  }
}

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);
  print(department.leader.name);
  print(department.name);
  print(department.leader.age);
  print('-------------------------');
  print(employee.toJson());
  print('-------------------------');
  Employee employee2 = Employee.fromJson({
    'name': '홍길동',
    'age': 41,
  });
  print(employee2.toJson());
  print('-------------------------');
  print(department.toJson());
  print('-------------------------');
  File file = File('company.txt');
  file.writeAsStringSync(jsonEncode(department.toJson()));

  String userJson = file.readAsStringSync();
  print(userJson);
}
