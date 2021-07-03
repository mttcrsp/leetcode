struct CountPrimes {
  func countPrimes(_ n: Int) -> Int {
    if n <= 2 { return 0 }
    if n == 3 { return 1 }

    var set: Set<Int> = []

    for x in 2 ... Int(Double(n).squareRoot()) {
      var i = 2
      while i * x < n {
        set.insert(i * x)
        i += 1
      }
    }

    return n - set.count - 2
  }
}
