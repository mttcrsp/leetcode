/// https://leetcode.com/problems/coin-change-ii/
struct CoinChangeIi {
  func change(_ amount: Int, _ coins: [Int]) -> Int {
    var dp = Array(repeating: 0, count: amount+1)
    dp[0] = 1

    for coin in coins {
      for i in coin ... amount {
        dp[i] += dp[i-coin]
      }
    }

    return dp[amount]
  }
}
