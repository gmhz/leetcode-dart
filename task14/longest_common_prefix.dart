class Solution {
  String longestCommonPrefix(List<String> strs) {
    String result = strs.first;

    for (int i = 1; i < strs.length; i++) {
      if (result.length > strs[i].length) {
        result = result.substring(0, strs[i].length);
      }

      int j = 0, k = 0;
      while (j < result.length && k < strs[i].length) {
        if (result[j] != strs[i][j]) {
          result = result.substring(0, j);
          break;
        }
        j++;
        k++;
      }
    }

    return result;
  }
}
