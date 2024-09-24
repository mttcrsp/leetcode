/// https://leetcode.com/problems/palindrome-number/
struct PalindromeNumber {
  func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
      return false
    } else if x == 0 {
      return true
    }

    var digits: [Int] = []
    var x = x
    while x > 0 {
      digits.append(x%10)
      x /= 10
    }

    var lhs = 0
    var rhs = digits.count-1
    while lhs < rhs {
      if digits[lhs] != digits[rhs] {
        return false
      }

      lhs += 1
      rhs -= 1
    }

    return true
  }
}
