struct BestTimeToBuyAndSellStockIi {
  func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    for i in prices.indices.dropFirst() {
      profit += max(prices[i] - prices[i - 1], 0)
    }
    return profit
  }
}
