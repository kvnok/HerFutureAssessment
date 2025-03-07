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

  void _checkPalindrome() {
    final String input = _controller.text;
    setState(() {
      _isPalindrome = isPalindrome(input);
      final result = _isPalindrome! ? '✅ "$input" is a palindrome!' : '❌ "$input" is not a palindrome.';
      ref.read(historylistProvider.notifier).addHistory(input, result);
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
