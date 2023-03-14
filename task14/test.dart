import 'package:test/test.dart';

import 'longest_common_prefix.dart';

void main() {
  var s = Solution();
  test('longest common prefix 1', () {
    expect(
      s.longestCommonPrefix(["flower", "flow", "flight"]),
      equals('fl'),
    );
  });
}
