import 'dart:io';

void main() {
  int start = 100;
  int end = 500;
  int totalSum = 0;

  for (int i = start; i <= end; i++) {
    totalSum += i;
  }

  print("Сумма всех целых чисел от $start до $end: $totalSum");

  stdout.write("Введите значение a: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Введите значение b: ");
  int b = int.parse(stdin.readLineSync()!);

  int totalSumAB = 0;

  for (int i = a; i <= b; i++) {
    totalSumAB += i;
  }

  print("Сумма всех целых чисел от $a до $b: $totalSumAB");
}
