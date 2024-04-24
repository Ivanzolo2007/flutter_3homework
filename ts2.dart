import 'dart:io';

void main() {
  print("Введите ваше двузначное число:");
  int inputDualDigit = int.parse(stdin.readLineSync()!);

  print("Введите число для проверки в двузначном формате:");
  int inputNumber = int.parse(stdin.readLineSync()!);

  if (containsFourOrSeven(inputDualDigit)) {
    print("Число $inputDualDigit содержит цифры 4 или 7");
  } else if (containsThreeSixOrNine(inputDualDigit)) {
    print("Число $inputDualDigit содержит цифры 3, 6 или 9");
  } else if (containsInputNumber(inputDualDigit, inputNumber)) {
    print("Число $inputDualDigit содержит цифру $inputNumber");
  } else {
    print("Ни одно из условий не выполнено");
  }
}

bool containsFourOrSeven(int number) {
  return (number ~/ 10 == 4 || number % 10 == 7);
}

bool containsThreeSixOrNine(int number) {
  return (number ~/ 10 == 3 || number % 10 == 6 || number % 10 == 9);
}

bool containsInputNumber(int dualDigit, int number) {
  return (dualDigit ~/ 10 == number || dualDigit % 10 == number);
}
