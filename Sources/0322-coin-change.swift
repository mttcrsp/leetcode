struct CoinChange {
  func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    if amount == 0 {
      return 0
    }

    var amounts = [Int](repeating: amount + 1, count: amount + 1)
    amounts[0] = 0

    for i in 1 ... amount {
      for coin in coins where coin <= i {
        amounts[i] = min(amounts[i], amounts[i - coin] + 1)
      }
    }

    return amounts[amount] > amount ? -1 : amounts[amount]
  }
}
