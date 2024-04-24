void main() {
  int n = 8;
  double count = 1;
  double den = 1;

  for (var i = 1; i <= n; i++) {
    den *= 3;
    count += 1 / den;
  }
  print(count);
}
