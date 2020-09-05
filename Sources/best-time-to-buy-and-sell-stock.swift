extension Solution {
  func maxProfit(_ prices: [Int]) -> Int {
    guard let first = prices.first else {
      return 0
    }

    var difference = 0
    var min = first

    for price in prices.dropFirst() {
      if price < min {
        min = price
      } else if price - min > difference {
        difference = price - min
      }
    }

    return difference
  }
}
