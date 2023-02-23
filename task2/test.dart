import 'package:test/test.dart';

import 'add_two_numbers.dart';

void main() {
  test('add two numbers', () {
    final result = addTwoNumbers(
      ListNode(2, ListNode(4, ListNode(3))),
      ListNode(5, ListNode(6, ListNode(4))),
    );
    final toExpect = ListNode(7, ListNode(0, ListNode(8)));
    expect(
      result,
      equals(toExpect),
    );
  });
}
