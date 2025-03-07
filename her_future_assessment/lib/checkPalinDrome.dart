import 'package:flutter/material.dart';

bool isPalindrome(String str) {
  String original = str.toLowerCase();
  String reversed = original.split('').reversed.join('');
  return original == reversed;
}
