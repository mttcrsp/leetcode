/// https://leetcode.com/problems/remove-element/
struct RemoveElement {
  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0
    for j in nums.indices {
      if nums[j] != val {
        nums[i] = nums[j]
        i += 1
      }
    }

    return i
  }
}
