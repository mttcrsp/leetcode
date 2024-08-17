/// https://leetcode.com/problems/palindromic-substrings/
struct PalindromicSubstrings {
  func countSubstrings(_ s: String) -> Int {
    func count(_ lhs: String.Index, _ rhs: String.Index) -> Int {
      var count = 0
      var lhs = lhs
      var rhs = rhs
      while lhs >= s.startIndex, rhs < s.endIndex {
        guard s[lhs] == s[rhs] else { break }
        count += 1
        guard lhs > s.startIndex else { break }
        lhs = s.index(before: lhs)
        guard rhs < s.endIndex else { break }
        rhs = s.index(after: rhs)
      }

      return count
    }

    var total = 0
    for index in s.indices {
      total += count(index, index)
      total += count(index, s.index(after: index))
    }

    return total
  }
}
