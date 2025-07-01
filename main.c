#include "leetcode.h"

int main(void) {
  int nums[] = {2, 7, 11, 15};
  int numSize = sizeof(nums) / sizeof(nums[0]);
  int target = 9;
  int returnSize = 0;
  int *result = twoSum(nums, numSize, target, &returnSize);
}