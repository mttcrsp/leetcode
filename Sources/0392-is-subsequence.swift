/// https://leetcode.com/problems/is-subsequence/
struct IsSubsequence {
  func isSubsequence(_ s: String, _ t: String) -> Bool {
    switch (s.isEmpty, t.isEmpty) {
    case (true, true): return true
    case (true, false): return true
    case (false, true): return false
    case (false, false): break
    }

    var index = s.startIndex
    for character in t where character == s[index] {
      index = s.index(after: index)

      if index == s.endIndex {
        return true
      }
    }
    return false
  }
}
