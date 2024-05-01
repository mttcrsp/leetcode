/// https://leetcode.com/problems/combination-sum-iii/
struct CombinationSumIii {
  func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
    let candidates = Array(1 ... 9)

    var result: [[Int]] = []
    var combination: [Int] = []
    var sum = 0
    func visit(_ index: Int) {
      if sum == n, combination.count == k {
        result.append(combination)
      } else if sum < n, combination.count < k {
        for i in index ..< candidates.count {
          combination.append(candidates[i])
          sum += candidates[i]
          visit(i+1)
          sum -= candidates[i]
          combination.removeLast()
        }
      }
    }

    visit(0)
    return result
  }
}
