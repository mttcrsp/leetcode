/// https://leetcode.com/problems/ugly-number/
struct UglyNumber {
  func isUgly(_ n: Int) -> Bool {
    guard n > 0 else { return false }

    let dividers: Set<Int> = [2, 3, 5]
    var n = n
    while true {
      if let divider = dividers.first(where: { divider in n%divider == 0 }) {
        n /= divider
      } else if n == 1 {
        return true
      } else {
        return false
      }
    }
  }
}
