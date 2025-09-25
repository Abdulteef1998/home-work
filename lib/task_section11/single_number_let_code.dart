class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (int num in nums) {
      result ^= num;
    }
    return result;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.singleNumber([4, 1, 2, 1, 2]));
}
