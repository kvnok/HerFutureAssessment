import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'historyListWidget.dart';
import 'inputField.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Palindrome Checker')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(),
              const Divider(),
              Expanded(
                child: HistorylistWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
historyList should also have the output
 (e.g., ✅ "{word} is a palindrome!" or ❌ "{word} is not a palindrome.")
madam -> ✅ "madam" is a palindrome!
hello -> ❌ "hello" is not a palindrome
racecar -> ✅ "racecar" is a palindrome!
race car -> ❌ "race car" is not a palindrome!

*/
