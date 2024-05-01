/// https://leetcode.com/problems/combination-sum-ii/
struct CombinationSumIi {
  func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    let candidates = candidates.sorted()

    var result: [[Int]] = []
    var combination: [Int] = []
    var sum = 0
    func visit(_ index: Int) {
      if sum == target {
        result.append(combination)
      } else if sum < target {
        var prev = -1
        for i in index ..< candidates.count {
          guard candidates[i] != prev else { continue }
          combination.append(candidates[i])
          sum += candidates[i]
          visit(i+1)
          sum -= candidates[i]
          combination.removeLast()
          prev = candidates[i]
        }
      }
    }

    visit(0)
    return result
  }
}
