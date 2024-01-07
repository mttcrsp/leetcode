/// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
struct BestTimeToBuyAndSellStockWithTransactionFee {
  func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
    guard let stock = prices.first else { return 0 }

    var stockY = -stock
    var stockN = 0
    for price in prices.dropFirst() {
      stockY = max(stockY, stockN-price)
      stockN = max(stockN, stockY+price-fee)
    }

    return max(stockY, stockN)
  }
}
