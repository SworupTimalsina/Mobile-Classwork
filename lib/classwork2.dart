import 'dart:io';

void main() {
  print("Enter a character: ");
  
  // Read user input
  String? input = stdin.readLineSync();
  
  if (input != null && input.length == 1) {
    // Check if the input is a single character
    String character = input.toLowerCase();

    // Check if it's a letter
    if (RegExp(r'^[a-z]$').hasMatch(character)) {
      if ("aeiou".contains(character)) {
        print("$input is a vowel.");
      } else {
        print("$input is a consonant.");
      }
    } else {
      print("$input is not a valid alphabetic character.");
    }
  } else {
    print("Invalid input. Please enter a single character.");
  }
}
