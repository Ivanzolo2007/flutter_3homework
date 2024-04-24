import 'dart:io';

void main() {
  print("Введите строку:");
  String input = stdin.readLineSync()!;

  bool isPalindrome = checkPalindrome(input);

  if (isPalindrome) {
    print(true);
  } else {
    print(false);
  }
}

bool checkPalindrome(String str) {
  int i = 0;
  int j = str.length - 1;

  while (i < j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}
