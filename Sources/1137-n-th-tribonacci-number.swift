/// https://leetcode.com/problems/n-th-tribonacci-number/
struct NThTribonacciNumber {
  func tribonacci(_ n: Int) -> Int {
    var table: [Int] = [0, 1, 1]

    if n < 0 {
      return 0
    }

    if n < 3 {
      return table[n]
    }

    for i in 3 ... n {
      table.append(table[i - 1] + table[i - 2] + table[i - 3])
    }

    return table[n]
  }
}
