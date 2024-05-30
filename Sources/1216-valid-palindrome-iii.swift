/// https://leetcode.com/problems/valid-palindrome-iii/
struct ValidPalindromeIii {
  func isValidPalindrome(_ s: String, _ k: Int) -> Bool {
    let s = Array(s)
    var memo: Set<[Int]> = []
    func visit(_ lhs: Int = 0, _ rhs: Int = s.count-1, _ remaining: Int = k) -> Bool {
      guard !memo.contains([lhs, rhs, remaining])
      else { return false }

      guard remaining >= 0
      else { return false }

      guard lhs < rhs
      else { return true }

      let result = if s[lhs] == s[rhs] {
        visit(lhs+1, rhs-1, remaining)
      } else {
        visit(lhs+1, rhs, remaining-1) ||
          visit(lhs, rhs-1, remaining-1)
      }

      if !result {
        memo.insert([lhs, rhs, remaining])
      }

      return result
    }

    return visit()
  }
}
