void main() {
  int n = 5;
  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
