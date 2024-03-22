void main() {
  // Null-safe and Null-aware
  String? text;

  // print(text ??= "Meow");
  // print(text.length);
  // print(text ??= "sup");

  // print(text?.length);

  final List<int> arr = [1, 2, 3, 4, 5];
  print(arr);
  arr[3] = 5;
  print(arr);
  arr[2] = 69;
  print(arr);

  final int test = 2;
  print(test);
}
