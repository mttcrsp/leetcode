/// https://leetcode.com/problems/contains-duplicate/
struct ContainsDuplicate {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    var known: Set<Int> = []
    for nums in nums {
      if !known.insert(nums).inserted {
        return true
      }
    }
    return false
  }
}
