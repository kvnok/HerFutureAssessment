import 'package:flutter/material.dart';

bool isPalindrome(String str) {
  str = str.toLowerCase();
  str = str.replaceAll(RegExp(r'[^a-z0-9]'), '');
  return str == str.split('').reversed.join('');
}

