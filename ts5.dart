import 'dart:io';

void main() {
  stdout.write("Введите шестизначное число: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number >= 100000 && number <= 999999) {
    int firstPart = number ~/ 1000;
    int secondPart = number % 1000;

    int sumFirstPart = sumOfDigits(firstPart);
    int sumSecondPart = sumOfDigits(secondPart);

    if (sumFirstPart == sumSecondPart) {
      print("$number - счастливое число!");
    } else {
      print("$number - несчастливое число.");
    }
  } else {
    print("Введите корректное шестизначное число.");
  }
}

int sumOfDigits(int n) {
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return sum;
}
