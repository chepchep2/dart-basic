void main() {
  myFunction();
}

Future<void> myFunction() async {
  print('start');

  await Future.delayed(Duration(seconds: 2), () {
    print('2 seconds');
  });

  print('end');
}
