import 'package:test/test.dart';

import 'longest_substring_without_repeating_characters.dart';

void main() {
  test('longest_substring_without_repeating_characters', () {
    expect(
      lengthOfLongestSubstringWithoutRepeatingCharacters("abcabcbb"),
      equals(3),
    );
  });
  test('longest_substring_without_repeating_characters space', () {
    expect(
      lengthOfLongestSubstringWithoutRepeatingCharacters(" "),
      equals(1),
    );
  });
  test('longest_substring_without_repeating_characters 2', () {
    expect(
      lengthOfLongestSubstringWithoutRepeatingCharacters("ekir7eyfaonshgbsawuFwgeoivhjwlebhlaeirubalwiuevhwilauehvlbwa"),
      equals(14),
    );
  });
  test('longest_substring_without_repeating_characters 3', () {
    expect(
      lengthOfLongestSubstringWithoutRepeatingCharacters("pwwkew"),
      equals(3),
    );
  });
  test('longest_substring_without_repeating_characters 5', () {
    expect(
      lengthOfLongestSubstringWithoutRepeatingCharacters("dvdf"),
      equals(3),
    );
  });
  test('longest_substring_without_repeating_characters 6', () {
    expect(
      lengthOfLongestSubstringWithoutRepeatingCharacters("ohvhjdml"),
      equals(6),
    );
  });
}
