import 'package:test/test.dart';

import 'container_with_most_water.dart';

void main() {
  test('container with most water 1', () {
    expect(
      Solution().maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]),
      equals(49),
    );
  });
}
