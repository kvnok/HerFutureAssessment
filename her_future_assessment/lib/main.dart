import 'package:flutter/material.dart';
import 'checkPalinDrome.dart';
import 'inputField.dart';
import 'historyList.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(),
              HistorylistWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
/*
palindrome checker
a string is a palindrome if it reads the same forwards and backwards
write a function that takes a string and returns true if the string is a palindrome
and false if it is not
the function should be case-insensitive and ignore spaces, punctuation, and special characters
example:
isPalindrome

there should be an input field for the user to enter a string
when the user clicks a button, the app should display a message indicating whether the string is a palindrome or not
the message should be displayed in a text widget below the input field
the message should be displayed in red text if the string is not a palindrome and green text if it is a palindrome
e.g., ✅ "{word} is a palindrome!" or ❌ "{word} is not a palindrome."

There should also be a history list that displays the strings that the user has checked for palindromes
the history list should be displayed below the message

add historylistwidget to the main app
*/