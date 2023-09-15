import 'package:test/test.dart';

import 'find_median_in_two_sorted_arrays.dart';

void main() {
  test('findMedianSortedArrays', () {
    final result =
        Solution().findMedianSortedArrays([1, 3], [2]);
    expect(result, equals(2.0));
  });
  test('findMedianSortedArrays2', () {
    final result =
        Solution().findMedianSortedArrays([1, 2], [3, 4]);
    expect(result, equals(2.5));
  });
  test('findMedianSortedArrays3', () {
    final result =
    Solution().findMedianSortedArrays([], [1]);
    expect(result, equals(1));
  });
  test('findMedianSortedArrays3', () {
    final result =
    Solution().findMedianSortedArrays([1,2,3], [1,2,2]);
    expect(result, equals(2));
  });
  test('findMedianSortedArrays4', () {
    final result =
    Solution().findMedianSortedArrays([1,2,4], [3]);
    expect(result, equals(2.5));
  });
  test('findMedianSortedArrays5', () {
    final result =
    Solution().findMedianSortedArrays([1,3], [2]);
    expect(result, equals(2.0));
  });
  test('findMedianSortedArrays6', () {
    final result =
    Solution().findMedianSortedArrays([4], [1,2,3,5]);
    expect(result, equals(3.0));
  });
}
