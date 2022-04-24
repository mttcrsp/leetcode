/// https://leetcode.com/problems/counting-bits/
struct CountingBits {
  func countBits(_ n: Int) -> [Int] {
    guard n > 0 else {
      return [0]
    }

    var result = [Int](repeating: 0, count: n + 1)
    var nearestPowerOf2 = 1
    for i in 1 ... n {
      if nearestPowerOf2 * 2 == i {
        nearestPowerOf2 = i
      }
      result[i] = result[i % nearestPowerOf2] + 1
    }
    return result
  }
}
