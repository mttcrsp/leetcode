/// https://leetcode.com/problems/wildcard-matching/
struct WildcardMatching {
  func isMatch(_ s: String, _ p: String) -> Bool {
    var indexS = s.startIndex
    var indexP = p.startIndex
    var indexStar: String.Index?
    var tmpIndexS: String.Index?
    while indexS < s.endIndex {
      if indexP < p.endIndex, p[indexP] == "?" || p[indexP] == s[indexS] {
        indexS = s.index(after: indexS)
        indexP = p.index(after: indexP)
      } else if indexP < p.endIndex, p[indexP] == "*" {
        indexStar = indexP
        tmpIndexS = indexS
        indexP = p.index(after: indexP)
      } else if let indexStar {
        indexP = p.index(after: indexStar)
        indexS = s.index(after: tmpIndexS!)
        tmpIndexS = indexS
      } else {
        return false
      }
    }

    return p[indexP ..< p.endIndex].allSatisfy { $0 == "*" }
  }
}
