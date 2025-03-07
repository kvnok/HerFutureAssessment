import 'package:flutter/material.dart';
import 'inputField.dart';
import 'historyList.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Historylist historylist = Historylist();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Palindrome Checker'),
        ),
        body: Column(
          children: [
            InputField(historylist: historylist),
            Expanded(
              child: HistorylistWidget(historylist: historylist)
            ),
          ],
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
on inputfield, add a callback function that adds the input to the history list when the user clicks the button
add a button to the history list that clears the history list when clicked
*/