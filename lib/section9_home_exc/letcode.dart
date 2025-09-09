class Solution {
  bool containsDuplicate(List<int> nums) {
    var i = nums.toSet();
    if (i.length == nums.length) {
      return false;
    } else {
      return true;
    }
  }
}
