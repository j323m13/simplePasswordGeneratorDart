/*
password generator in dart
it ain't dumm if it works!
version: 1
author: j323m13
*/

import 'dart:math';

String lowerCase = "abcdefghijklmnopqrstuvwxyz";
String upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
String specialChar = "+*ç%&/()=?`^à¨è-.,:_><";
String numbers = "0123456789";
int maxNumberOfChars = 35;

String tmpString = lowerCase + upperCase + numbers + specialChar;
String password = "";
int tmpStringLength = tmpString.length;
dynamic passwordStrength;

//password entropy
passwordEntropy(passwordString) {
  return passwordStrength = log(tmpStringLength) * maxNumberOfChars;
}

//check password strength
passwordStrengthness(passwordString) {
  var entropy = passwordEntropy(passwordString);
  if ((entropy > 80.00) && (entropy < 100)) {
    print("password strength is good");
  } else if (passwordEntropy(passwordString) > 100.00) {
    print("password strength is excellent.");
  } else if ((entropy < 80.00) && (entropy > 50.00)) {
    print("password strength is week.");
  } else if (entropy < 50.00) {
    print("password strength is week AF.");
  }
}

void main(List<String> args) {
  print("number of chars: ${tmpStringLength}");

  for (var i = 0; i < maxNumberOfChars; i++) {
    var random = Random();
    password = password + tmpString[random.nextInt(tmpStringLength - 1)];
  }

  print("Your new password: ${password}");
  print("password strength: ${passwordEntropy(password)} bits.");
  passwordStrengthness(password);
}
