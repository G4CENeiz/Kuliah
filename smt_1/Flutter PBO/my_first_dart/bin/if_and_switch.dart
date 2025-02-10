import 'dart:io';

void main(List<String> args) {
  int number = int.tryParse(stdin.readLineSync()!) ?? 2;

  if (number > 0) {
    print("positif");
  } else if (number < 0) {
    print("negatif");
  } else {
    print("nol");
  }
}
