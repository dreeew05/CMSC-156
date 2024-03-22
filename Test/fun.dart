void main() {
  // print(sum(2));
  print(sum2(10, z: 30));
  print(sum2(20));
}

int sum(int x, [int y = 10, int z = 20]) => x + y + z;
int sum2(int x, {int y = 10, int z = 20}) => x + y + z;
