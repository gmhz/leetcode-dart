/**
 * Definition for singly-linked list.
 */

class ListNode extends Object {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListNode &&
          runtimeType == other.runtimeType &&
          val == other.val &&
          next == other.next;
}

ListNode addTwoNumbers(ListNode l1, ListNode l2) {
  var resultNode = ListNode();

  int toAdd = 0;
  ListNode? cn1 = l1;
  ListNode? cn2 = l2;
  var currentNode = resultNode;
  while (cn1 != null || cn2 != null) {
    int n = (cn1?.val ?? 0) + (cn2?.val ?? 0) + toAdd;
    toAdd = 0;
    if (n >= 10) {
      toAdd = 1;
      n = n - 10;
    }
    cn1 = cn1?.next;
    cn2 = cn2?.next;

    currentNode.val = n;
    if (cn1 != null || cn2 != null || toAdd > 0) {
      final nextNode = ListNode(toAdd);
      currentNode.next = nextNode;
      currentNode = nextNode;
    }
  }

  return resultNode;
}
