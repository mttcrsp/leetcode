/// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
struct RemoveDuplicatesFromSortedArray {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 1
    for i in nums.indices.dropFirst() {
      if nums[i] != nums[i-1] {
        nums[index] = nums[i]
        index += 1
      }
    }
    return index
  }
}
