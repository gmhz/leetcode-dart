import 'package:test/test.dart';

import 'valid_parenthesis.dart';

void main() {
  var s = Solution();
  test('letterCombinations 1', () {
    expect(
      s.isValid("{[]()([{}])}"),
      equals(true),
    );
  });
}
