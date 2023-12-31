/// https://leetcode.com/problems/combination-sum-ii/
struct CombinationSumIi {
  func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var combinations: [[Int]: Int] = [[]: 0]
    for candidate in candidates {
      for (combination, sum) in combinations {
        if sum+candidate <= target {
          combinations[combination+[candidate]] = sum+candidate
        }
      }
    }

    var result: Set<[Int]> = []
    for (combination, sum) in combinations {
      if sum == target {
        result.insert(combination.sorted())
      }
    }
    return Array(result)
  }
}
