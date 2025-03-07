import 'package:flutter/material.dart';

bool isPalindrome(String str) {
  String string = str.toLowerCase();
  string = string.replaceAll(RegExp(r'[^a-z0-9]'), '');
  String reversed = string.split('').reversed.join('');
  return string == reversed;
}
