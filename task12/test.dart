import 'package:test/test.dart';

import 'roman_to_integer.dart';

void main() {
  var s = Solution();
  test('int to roman 1', () {
    expect(
      s.romanToInt('MMMDLV'),
      equals(3555),
    );
  });
  test('int to roman 2', () {
    expect(
      s.romanToInt('LVIII'),
      equals(58),
    );
  });
  test('int to roman 3', () {
    expect(
      s.romanToInt('XCVIII'),
      equals(98),
    );
  });
}
