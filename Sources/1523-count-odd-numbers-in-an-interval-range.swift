struct CountOddNumbersInAnIntervalRange {
  func countOdds(_ low: Int, _ high: Int) -> Int {
    let oddLow = low - ((low & 1) ^ 1)
    let oddHigh = high + ((high & 1) ^ 1)

    var result = ((oddHigh - oddLow) / 2) - 1
    result += low % 2
    result += high % 2
    return result
  }
}
