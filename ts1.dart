import 'dart:io';

void main() {
  print("Введите ваше двузначное число:");
  int inputDualDigit = int.parse(stdin.readLineSync()!);

  print("Введите число для проверки в двузначном формате:");
  int inputNumber = int.parse(stdin.readLineSync()!);

  if ((inputDualDigit ~/ 10 == 4 || inputDualDigit % 10 == 7) ||
      (inputDualDigit ~/ 10 == 3 ||
          inputDualDigit % 10 == 6 ||
          inputDualDigit % 10 == 9) ||
      (inputDualDigit ~/ 10 == inputNumber ||
          inputDualDigit % 10 == inputNumber)) {
    print(true);
  } else {
    print(false);
  }
}
