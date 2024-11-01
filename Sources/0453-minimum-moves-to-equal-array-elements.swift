/// https://leetcode.com/problems/minimum-moves-to-equal-array-elements/
struct MinimumMovesToEqualArrayElements {
  func minMoves(_ nums: [Int]) -> Int {
    let min = nums.min()!

    var result = 0
    for num in nums {
      result += num-min
    }
    return result
  }
}
