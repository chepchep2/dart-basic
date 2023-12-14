import 'dart:convert';

import 'package:dart_basic/23_12_14/Todo.dart';
import 'package:http/http.dart' as http;

void main() async {
  Todo todo = await getTodo(1);
  print(todo.title);

  List<Todo> todoList = await getTodos();
  for (var element in todoList) {
    print(element);
  }
}

Future<Todo> getTodo(int id) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

  final jsonString = response.body;
  // print(jsonString);
  final json = jsonDecode(jsonString);
  // print(json);

  return Todo.fromJson(json);
}

Future<List<Todo>> getTodos() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  final jsonString = response.body;
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}
