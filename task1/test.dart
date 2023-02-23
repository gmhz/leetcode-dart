import 'package:test/test.dart';

import 'two_sum.dart';

void main() {
  test('two sum', () {
    expect(
      twoSum([2, 7, 11, 15], 9),
      unorderedEquals([0, 1]),
    );
  });
}
