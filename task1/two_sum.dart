List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    final diff = target - nums[i];

    if (map.containsKey(nums[i])) {
      return [i, map[nums[i]]!];
    }

    map[diff] = i;
  }

  return [];
}