import 'package:test/test.dart';

import 'palindrome_number.dart';

void main() {
  test('isPalindrome 1', () {
    expect(
      isPalindrome(51115),
      equals(true),
    );
  });
  test('isPalindrome 2', () {
    expect(
      isPalindrome(1123),
      equals(false),
    );
  });
  test('isPalindrome 3', () {
    expect(
      isPalindrome(1000000001),
      equals(true),
    );
  });
}
