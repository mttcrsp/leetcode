/// https://leetcode.com/problems/subsets/
struct Subsets {
  func subsets(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = [[]]

    func visit(_ offset: Int = 0, subset: [Int] = []) {
      if offset < nums.count {
        let extendedSubset = subset+[nums[offset]]
        result.append(extendedSubset)
        visit(offset+1, subset: extendedSubset)
        visit(offset+1, subset: subset)
      }
    }

    visit()

    return result
  }
}
