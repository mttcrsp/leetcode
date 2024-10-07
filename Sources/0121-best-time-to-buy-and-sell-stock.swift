/// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
struct BestTimeToBuyAndSellStock {
  func maxProfit(_ prices: [Int]) -> Int {
    guard var minPrice = prices.first else { return 0 }

    var maxProfit = 0
    for price in prices.dropFirst() {
      if price < minPrice {
        minPrice = price
      } else {
        maxProfit = max(maxProfit, price-minPrice)
      }
    }

    return maxProfit
  }
}
