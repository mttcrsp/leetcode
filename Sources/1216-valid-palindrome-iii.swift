/// https://leetcode.com/problems/valid-palindrome-iii/
struct ValidPalindromeIii {
  func isValidPalindrome(_ s: String, _ k: Int) -> Bool {
    let s = Array(s)

    var memo: Set<[Int]> = []
    func dfs(_ lhs: Int = 0, _ rhs: Int = s.count-1, _ k: Int = k) -> Bool {
      guard !memo.contains([lhs, rhs, k]), k >= 0 else { return false }

      var lhs = lhs
      var rhs = rhs
      while lhs < rhs {
        if s[lhs] == s[rhs] {
          lhs += 1
          rhs -= 1
        } else {
          guard !dfs(lhs+1, rhs, k-1) else { return true }
          guard !dfs(lhs, rhs-1, k-1) else { return true }
          memo.insert([lhs, rhs, k])
          return false
        }
      }

      return true
    }

    return dfs()
  }
}
