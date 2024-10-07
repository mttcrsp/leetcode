/// https://leetcode.com/problems/longest-palindromic-substring/
struct LongestPalindromicSubstring {
  func longestPalindrome(_ s: String) -> String {
    let s = Array(s)

    var longest: ArraySlice<Character> = []
    for index in s.indices {
      var lhs = index
      var rhs = index
      while lhs >= 0, rhs < s.count, s[lhs] == s[rhs] {
        if rhs-lhs+1 > longest.count { longest = s[lhs...rhs] }
        lhs -= 1
        rhs += 1
      }

      if index < s.count-1 {
        lhs = index
        rhs = index+1
        while lhs >= 0, rhs < s.count, s[lhs] == s[rhs] {
          if rhs-lhs+1 > longest.count { longest = s[lhs...rhs] }
          lhs -= 1
          rhs += 1
        }
      }
    }

    return String(longest)
  }
}