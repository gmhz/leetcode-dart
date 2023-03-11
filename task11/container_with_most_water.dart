class Solution {
  int maxArea(List<int> height) {
    int l = 0, r = height.length - 1, result = 0;

    while (l < r) {
      int _min = height[l] > height[r] ? height[r] : height[l];
      int possibleResult = _min * (r - l);

      if (result < possibleResult) {
        result = possibleResult;
      }

      if (height[l] > height[r])
        r--;
      else
        l++;
    }

    return result;
  }
}
