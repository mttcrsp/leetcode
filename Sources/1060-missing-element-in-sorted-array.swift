/// https://leetcode.com/problems/missing-element-in-sorted-array/
struct MissingElementInSortedArray {
  func missingElement(_ nums: [Int], _ k: Int) -> Int {
    func missingElementsCount(at index: Int) -> Int {
      nums[index]-index-nums[0]
    }

    var targetIndex = -1
    var lhs = 0
    var rhs = nums.count-1
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if missingElementsCount(at: mid) < k {
        targetIndex = mid
        lhs += 1
      } else {
        rhs -= 1
      }
    }

    return nums[targetIndex]+(k-missingElementsCount(at: targetIndex))
  }
}
