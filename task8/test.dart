import 'package:test/test.dart';

import 'atoi.dart';

void main() {
  test('myAtoi 1', () {
    expect(
      Solution().myAtoi("words and 987"),
      equals(0),
    );
  });
  test('myAtoi 2', () {
    expect(
      Solution().myAtoi("-91283472332"),
      equals(-2147483648),
    );
  });
  test('myAtoi 3', () {
    expect(
      Solution().myAtoi("   -42"),
      equals(-42),
    );
  });

}
