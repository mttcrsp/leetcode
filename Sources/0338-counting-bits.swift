/// https://leetcode.com/problems/counting-bits/
struct CountingBits {
  func countBits(_ n: Int) -> [Int] {
    guard n > 0 else {
      return [0]
    }

    var result = [Int](repeating: 0, count: n+1)
    var j = 0
    for i in 1 ... n {
      j = i.nonzeroBitCount == 1 ? 0 : j
      result[i] = result[j]+1
      j += 1
    }

    return result
  }
}
