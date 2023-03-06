class Solution {
  static const max = 2147483647;
  static const min = -2147483648;

  int myAtoi(String s) {
    int result = 0;
    bool isNegative = false;
    int i = 0;

    while (i < s.length && s[i] == ' ') {
      i++;
    }

    if (i < s.length && (s[i] == '-' || s[i] == '+')) {
      isNegative = s[i] == '-';
      i++;
    }

    for (int j = i; j < s.length; j++) {
      if ("0123456789".contains(s[j])) {
        int n = int.parse(s[j]);
        result = result * 10 + (isNegative ? -n : n);

        if (result < min || result > max) break;
      } else
        break;
    }

    return result.clamp(min, max);
  }
}
