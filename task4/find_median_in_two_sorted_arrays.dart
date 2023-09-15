class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    double result = 0;

    for (final n in nums2) {
      final index = indexForNumber(nums1, n);
      if (index == -1) {
        nums1.add(n);
      } else {
        nums1.insert(index, n);
      }
    }
    nums2.clear();

    if (nums1.length == 1) return nums1.first.toDouble();

    if (nums1.length % 2 == 0) {
      result = (nums1[nums1.length ~/ 2] + nums1[nums1.length ~/ 2 - 1]) / 2;
    } else {
      result = nums1[nums1.length ~/ 2].toDouble();
    }

    return result;
  }

  int indexForNumber(List<int> nums, int n) {
    int index = -1;
    if (nums.isEmpty) return index;

    int l = 0,
        r = nums.length - 1;
    if (nums[l] >= n) {
      index = 0;
      return index;
    }
    if (nums[r] <= n) {
      index = r + 1;
      return index;
    }
    while (l <= r) {
      final mid = l + (r - l) ~/ 2;

      if (nums[mid] == n) {
        return mid;
      } else {
        if (n > nums[mid]) {
          l = index = mid + 1;
        } else {
          index = mid;
          r = mid - 1;
        }
      }
    }

    return index;
  }
}
