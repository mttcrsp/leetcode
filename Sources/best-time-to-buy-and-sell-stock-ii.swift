struct BestTimeToBuyAndSellStockIi {
  func maxProfit(_ prices: [Int]) -> Int {
    guard let first = prices.first else { return 0 }

    var profit = 0, min = first, max = first
    for i in prices.indices.dropFirst() {
      let prev = prices[i - 1]
      let curr = prices[i]
      if curr > prev {
        max = curr
      } else if curr < prev {
        if max > min { profit += max - min }
        min = curr
        max = curr
      }
    }

    if max > min { profit += max - min }
    return profit
  }
}
