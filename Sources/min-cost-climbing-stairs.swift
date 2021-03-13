struct MinCostClimbingStairs {
  func minCostClimbingStairs(_ costs: [Int]) -> Int {
    var dp = [0, 0]
    for cost in costs {
      let candidate1 = cost + dp[dp.count - 1]
      let candidate2 = cost + dp[dp.count - 2]
      dp.append(min(candidate1, candidate2))
    }
    return min(dp[dp.count - 1], dp[dp.count - 2])
  }
}
