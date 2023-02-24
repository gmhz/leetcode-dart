import 'package:test/test.dart';

import 'longest_substring_without_repeating_characters.dart';

void main() {
  test('longest_substring_without_repeating_characters', () {
    expect(
      lengthOfLongestSubstring("abcabcbb"),
      equals(3),
    );
  });
  test('longest_substring_without_repeating_characters space', () {
    expect(
      lengthOfLongestSubstring(" "),
      equals(1),
    );
  });
  test('longest_substring_without_repeating_characters 2', () {
    expect(
      lengthOfLongestSubstring("ekir7eyfaonshgbsawuFwgeoivhjwlebhlaeirubalwiuevhwilauehvlbwa"),
      equals(14),
    );
  });
  test('longest_substring_without_repeating_characters 3', () {
    expect(
      lengthOfLongestSubstring("pwwkew"),
      equals(3),
    );
  });
  test('longest_substring_without_repeating_characters 5', () {
    expect(
      lengthOfLongestSubstring("dvdf"),
      equals(3),
    );
  });
  test('longest_substring_without_repeating_characters 6', () {
    expect(
      lengthOfLongestSubstring("ohvhjdml"),
      equals(6),
    );
  });
}
