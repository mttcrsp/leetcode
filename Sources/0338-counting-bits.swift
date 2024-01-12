/// https://leetcode.com/problems/counting-bits/
struct CountingBits {
  func countBits(_ n: Int) -> [Int] {
    guard n > 0 else { return [0] }

    var result = [Int](repeating: 0, count: n+1)
    for i in 1 ... n {
      result[i] = result[i/2]+(i%2)
    }
    return result
  }
}
