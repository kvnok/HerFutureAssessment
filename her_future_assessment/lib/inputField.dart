import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:her_future_assessment/providers.dart';
import 'checkPalinDrome.dart';

class InputField extends ConsumerStatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends ConsumerState<InputField> {
  final TextEditingController _controller = TextEditingController();
  bool? _isPalindrome;
  String? _lastInput;

  void _checkPalindrome() {
    final String input = _controller.text;
    if (input.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Input cannot be empty')),
      );
      return;
    }
    setState(() {
      _isPalindrome = isPalindrome(input);
      _lastInput = input;
      final result = _isPalindrome! ? '✅ "$input" is a palindrome!' : '❌ "$input" is not a palindrome.';
      ref.read(historylistProvider.notifier).addHistory(input, result);
      _controller.clear(); // Clear the input field
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 300, // Set the desired width here
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter a string',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            ),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _checkPalindrome,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            textStyle: TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: const Text('Check Palindrome'),
        ),
        if (_isPalindrome != null && _lastInput != null)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              _isPalindrome! ? '✅ "$_lastInput" is a palindrome!' : '❌ "$_lastInput" is not a palindrome.',
              style: TextStyle(color: _isPalindrome! ? Colors.green : Colors.red),
            ),
          ),
      ],
    );
  }
}
