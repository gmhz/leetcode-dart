import 'package:test/test.dart';

import 'reverse_integer.dart';

void main() {
  test('reverse int 1', () {
    expect(
      reverse(123),
      equals(321),
    );
  });
  test('reverse int 2', () {
    expect(
      reverse(-123),
      equals(-321),
    );
  });
}
