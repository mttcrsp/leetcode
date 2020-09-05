extension Solution {
  func minMoves(_ nums: [Int]) -> Int {
    let min = nums.min()!

    var result = 0
    for num in nums { result += num - min }
    return result
  }
}
