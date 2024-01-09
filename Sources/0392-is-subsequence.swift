/// https://leetcode.com/problems/is-subsequence/
struct IsSubsequence {
  func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sIndex = s.startIndex
    var tIndex = t.startIndex
    while sIndex < s.endIndex, tIndex < t.endIndex {
      if s[sIndex] == t[tIndex] {
        sIndex = s.index(after: sIndex)
        tIndex = t.index(after: tIndex)
      } else {
        tIndex = t.index(after: tIndex)
      }
    }
    return sIndex == s.endIndex
  }
}
