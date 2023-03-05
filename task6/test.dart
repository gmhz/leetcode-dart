import 'package:test/test.dart';

import 'zigzag_convert.dart';

void main() {
  test('zigzagConvert 1', () {
    expect(
      zigzagConvert("PAYPALISHIRING", 3),
      equals("PAHNAPLSIIGYIR"),
    );
  });
  test('zigzagConvert 2', () {
    expect(
      zigzagConvert("PAYPALISHIRING", 4),
      equals("PINALSIGYAHRPI"),
    );
  });
  test('zigzagConvert 3', () {
    expect(
      zigzagConvert("a", 1),
      equals("a"),
    );
  });
  test('zigzagFromBottomConvert 1', () {
    expect(
      zigzagFromBottomConvert("PAYPALISHIRING", 4),
      equals("PIYAHRALSIGPIN"),
    );
  });
  test('zigzagFromBottomConvert 1', () {
    expect(
      zigzagFromBottomConvert("PAYPALISHIRING", 3),
      equals("YIRAPLSIIGPAHN"),
    );
  });
}
