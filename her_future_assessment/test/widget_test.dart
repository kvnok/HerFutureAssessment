import 'package:flutter_test/flutter_test.dart';
import 'package:her_future_assessment/checkPalinDrome.dart';

void main() {
  group('isPalindrome', () {
    test('returns true for a palindrome', () {
      expect(isPalindrome('madam'), isTrue);
      expect(isPalindrome('racecar'), isTrue);
      expect(isPalindrome('A man a plan a canal Panama'), isTrue);
    });

    test('returns false for a non-palindrome', () {
      expect(isPalindrome('hello'), isFalse);
      expect(isPalindrome('world'), isFalse);
      expect(isPalindrome('flutter'), isFalse);
    });

    test('returns true for an empty string', () {
      expect(isPalindrome(''), isTrue);
    });

    test('returns true for a single character', () {
      expect(isPalindrome('a'), isTrue);
      expect(isPalindrome('Z'), isTrue);
    });
  });
}
