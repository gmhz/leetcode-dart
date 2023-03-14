import 'package:test/test.dart';

import 'integer_to_roman.dart';

void main() {
  var s = Solution();
  test('int to roman 1', () {
    expect(
      s.intToRoman(3555),
      equals('MMMDLV'),
    );
  });
  test('int to roman 2', () {
    expect(
      s.intToRoman(58),
      equals('LVIII'),
    );
  });
  test('int to roman 3', () {
    expect(
      s.intToRoman(98),
      equals('XCVIII'),
    );
  });
}
