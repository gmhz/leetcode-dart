class Solution {
  bool isValid(String s) {
    final stack = <String>[];

    for (int i = 0; i < s.length; i++) {
      final b = s[i];
      if (b == ')' || b == ']' || b == '}') {
        if (stack.isEmpty) return false;
        final last = stack.removeLast();
        if ((b == ']' && last == '[') ||
            (b == '}' && last == '{') ||
            (b == ')' && last == '(')) {
          continue;
        } else {
          return false;
        }
      } else {
        stack.add(b);
      }
    }

    return stack.isEmpty;
  }
}
