/// https://leetcode.com/problems/last-substring-in-lexicographical-order/
struct LastSubstringInLexicographicalOrder {
  func lastSubstring(_ s: String) -> String {
    var max = ""

    for index in s.indices {
      let suffix = s[index ..< s.endIndex]
      if suffix > max {
        max = String(suffix)
      }
    }

    return max
  }
}
