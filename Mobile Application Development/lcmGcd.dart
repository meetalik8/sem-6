int findGCD(int a, int b) {
  while (b != 0) {
    var temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}
int findLCM(int a, int b) {
  return (a * b) ~/ findGCD(a, b);
}
void main() {
  int num1 = 8;
  int num2 = 36;

  int gcd = findGCD(num1, num2);
  int lcm = findLCM(num1, num2);

  print('GCD of $num1 and $num2: $gcd');
  print('LCM of $num1 and $num2: $lcm');
}
