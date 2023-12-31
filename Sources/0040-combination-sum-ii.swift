/// https://leetcode.com/problems/combination-sum-ii/
struct CombinationSumIi {
  func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    let candidates = candidates.sorted()

    var result: [[Int]] = []
    var current: [Int] = []
    var currentDifference = target
    func backtrack(_ index: Int) {
      if currentDifference == 0 {
        result.append(current)
      } else if currentDifference > 0 {
        var prev = -1
        for i in index ..< candidates.count {
          guard candidates[i] != prev else { continue }
          current.append(candidates[i])
          currentDifference -= candidates[i]
          backtrack(i+1)
          currentDifference += candidates[i]
          current.removeLast()
          prev = candidates[i]
        }
      }
    }

    backtrack(0)
    return result
  }
}
