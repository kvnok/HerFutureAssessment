import 'package:flutter/material.dart';
import 'checkPalinDrome.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final TextEditingController _controller = TextEditingController();
  bool? _isPalindrome;

  void _checkPalindrome() {
    final String input = _controller.text;
    setState(() {
      _isPalindrome = isPalindrome(input);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            hintText: 'Enter a string',
          ),
        ),
        ElevatedButton(
          onPressed: _checkPalindrome,
          child: const Text('Check Palindrome'),
        ),
        if (_isPalindrome != null)
          Text(
            _isPalindrome! ? '✅ "${_controller.text}" is a palindrome!' : '❌ "${_controller.text}" is not a palindrome.',
            style: TextStyle(color: _isPalindrome! ? Colors.green : Colors.red),
          ),
      ],
    );
  }
}
