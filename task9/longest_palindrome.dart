String longestPalindrome(String s) {
  if (s.length < 2) return s;

  if (s.length == 2 && s[0] != s[1]) return s[0];
  if (s.length == 2 && s[0] == s[1]) return s;

  if (s.length == 3 && s[0] == s[2]) return s;

  List<List<int>> minimalPalindromeIndexes = [];

  List<List<int>> palindromableIndexes(int aI, int bI, int cI) {
    List<List<int>> list = [];
    if (s[aI] == s[bI]) list.add([aI, bI]);
    if (s[bI] == s[cI]) list.add([bI, cI]);
    if (s[aI] == s[cI]) list.add([aI, bI, cI]);

    return list;
  }

  for (int i = 2; i < s.length; i++) {
    final indexes = palindromableIndexes(i - 2, i - 1, i);
    if (indexes.isNotEmpty) minimalPalindromeIndexes.addAll(indexes);
  }

  String result = '';
  int l = s.length;
  for (final idxs in minimalPalindromeIndexes) {
    if (idxs.length == 2) {
      int i = idxs.elementAt(0), j = idxs.elementAt(1);
      do {
        if (s[i] == s[j]) {
          if (result.length < j + 1 - i) {
            result = s.substring(i, j + 1);
          }
        } else {
          break;
        }
        i--;
        j++;
      } while (i >= 0 && j < l);
    }

    if (idxs.length == 3) {
      int i = idxs.elementAt(0), j = idxs.elementAt(2);

      do {
        if (s[i] == s[j]) {
          if (result.length < j + 1 - i) {
            result = s.substring(i, j + 1);
          }
        } else {
          break;
        }
        i--;
        j++;
      } while (i >= 0 && j < l);
    }
  }

  if (minimalPalindromeIndexes.isEmpty) result = s[0];

  return result;
}
