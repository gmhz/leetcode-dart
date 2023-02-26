int lengthOfLongestSubstringWithoutRepeatingCharacters(String s) {
  int l = s.length;
  int longest = 0, i = 0, j = 0;

  Set<String> set = {};
  while (i < l && j < l) {
    if (set.contains(s[i])) {
      set.remove(s[j++]);
    } else {
      set.add(s[i++]);

      longest = longest > i - j ? longest : i - j;
    }
  }

  return longest;
}
