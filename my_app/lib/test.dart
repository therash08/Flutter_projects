import 'dart:io';

void main() {
  // Taking user input
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  // Logic + Output
  print("Hello, $name! Welcome to Dart programming.");
}
