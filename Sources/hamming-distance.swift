extension Solution {
  func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var result = 0
    var x = x
    var y = y

    while x > 0 || y > 0 {
      let isLeastSignificantBitDifferent = x % 2 != y % 2
      if isLeastSignificantBitDifferent { result += 1 }
      x = x >> 1
      y = y >> 1
    }

    return result
  }
}
