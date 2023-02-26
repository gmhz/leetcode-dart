import 'package:test/test.dart';

import 'longest_palindrome.dart';

void main() {
  test('longestPalindrome 1', () {
    expect(
      longestPalindrome("3ab12333215bcbb4a1"),
      equals('1233321'),
    );
  });
  test('longestPalindrome 2', () {
    expect(
      longestPalindrome("adbdyccxbcbda"),
      equals('dbd'),
    );
  });
  test('longestPalindrome 3', () {
    expect(
      longestPalindrome("abbcbba"),
      equals('abbcbba'),
    );
  });
  test('longestPalindrome 4', () {
    expect(
      longestPalindrome("abb"),
      equals('bb'),
    );
  });
  test('longestPalindrome 5', () {
    expect(
      longestPalindrome("ccd"),
      equals('cc'),
    );
  });
  test('longestPalindrome 5', () {
    expect(
      longestPalindrome("aaaa"),
      equals('aaaa'),
    );
  });
  test('longestPalindrome 5', () {
    expect(
      longestPalindrome("aaaaa"),
      equals('aaaaa'),
    );
  });
}
