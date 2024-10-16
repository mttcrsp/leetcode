/// https://leetcode.com/problems/subsets/
struct Subsets {
  func subsets(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    var subset: [Int] = []
    func backtrack(_ index: Int = 0) {
      if index < nums.count {
        subset.append(nums[index])
        backtrack(index+1)
        subset.removeLast()
        backtrack(index+1)
      } else {
        result.append(subset)
      }
    }

    backtrack()
    return result
  }
}
