import 'dart:io';

void main() {
  print("Введите натуральное число n (n <= 9999):");
  int n = int.parse(stdin.readLineSync()!);

  bool hasThreeSameDigits = checkThreeSameDigits(n);

  if (hasThreeSameDigits) {
    print("$n содержит ровно три одинаковые цифры.");
  } else {
    print("$n не содержит ровно три одинаковые цифры.");
  }
}

bool checkThreeSameDigits(int number) {
  int firstDigit = number ~/ 1000;
  int secondDigit = (number % 1000) ~/ 100;
  int thirdDigit = (number % 100) ~/ 10;
  int fourthDigit = number % 10;

  int countFirstDigit = 0;
  int countSecondDigit = 0;
  int countThirdDigit = 0;
  int countFourthDigit = 0;

  if (firstDigit != 0) countFirstDigit++;
  if (secondDigit != 0) countSecondDigit++;
  if (thirdDigit != 0) countThirdDigit++;
  if (fourthDigit != 0) countFourthDigit++;

  return (countFirstDigit == 3 ||
      countSecondDigit == 3 ||
      countThirdDigit == 3 ||
      countFourthDigit == 3);
}
