void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  print(result);
  task3();
}

void task1() {
  print('Task 1 끝');
}

Future<String> task2() async {
  String result = '널';
  await Future.delayed(Duration(seconds: 3), () {
    print('Task 2 끝');
    result = 'Task 2 이제 끝';
  });
  return result;
}

void task3() {
  print('Task 3 끝');
}
