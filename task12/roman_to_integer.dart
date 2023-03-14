class Solution {
  int romanToInt(String s) {
    int result = 0;

    final map = {
      'M': 1000,
      'CM': 900,
      'D': 500,
      'CD': 400,
      'C': 100,
      'XC': 90,
      'L': 50,
      'XL': 40,
      'X': 10,
      'IX': 9,
      'V': 5,
      'IV': 4,
      'I': 1,
    };

    for (String key in map.keys) {
      while (s.indexOf(key) == 0) {
        s = s.replaceFirst(key, '');
        result += map[key] ?? 0;
      }
    }

    return result;
  }
}
