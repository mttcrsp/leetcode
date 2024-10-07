/// https://leetcode.com/problems/is-subsequence/
struct IsSubsequence {
  func isSubsequence(_ s: String, _ t: String) -> Bool {
    var indexS = s.startIndex
    var indexT = t.startIndex
    while indexS < s.endIndex, indexT < t.endIndex {
      if s[indexS] == t[indexT] {
        indexS = s.index(after: indexS)
      }
      indexT = t.index(after: indexT)
    }

    return indexS == s.endIndex
  }
}
