Future<String> catSound() async {
  var sound = await printWithDelay();
  return 'Cat says $sound';
}

Future<String> printWithDelay() =>
    Future.delayed(const Duration(seconds: 1), () => 'Sup MF');

Future<void> printOrderMsg() async {
  print('Await order');
  var order = await fetchOrder();
  print('Order is $order');
}

Future<String> fetchOrder() =>
    Future.delayed(const Duration(seconds: 2), () => 'Test');

void countSecs(int s) {
  for (int i = 0; i < s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  print('Ended');
}

Future<void> fetchData2() async {
  await Future.delayed(Duration(seconds: 2), () => print('Ended MF'));
}

/*void main() async {
  // print(await catSound());
  countSecs(4);
  await printOrderMsg();
}*/

void main() {
  print('Start');
  fetchData();
  fetchData2();
  for (int i = 0; i < 10; i++) {
    print('Execurte $i');
  }
  print('Ended Main');
}
