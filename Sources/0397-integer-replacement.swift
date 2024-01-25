/// https://leetcode.com/problems/integer-replacement/
struct IntegerReplacement {
  func integerReplacement(_ n: Int) -> Int {
    var n = n
    var count = 0
    while n != 1 {
      count += 1
      if n%2 == 0 {
        n /= 2
      } else if n != 3, n%4 == 3 {
        n += 1
      } else {
        n -= 1
      }
    }
    return count
  }
}
