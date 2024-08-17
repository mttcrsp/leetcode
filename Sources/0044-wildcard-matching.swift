/// https://leetcode.com/problems/wildcard-matching/
struct WildcardMatching {
  func isMatch(_ s: String, _ p: String) -> Bool {
    let s = Array(s)
    let p = Array(p)

    var memo: [[Int]: Bool] = [:]
    func isMatch(_ indexS: Int, _ indexP: Int) -> Bool {
      guard indexP < p.count else {
        return indexS == s.count
      }

      let memoKey = [indexS, indexP]
      if let result = memo[memoKey] {
        return result
      }

      let result = if p[indexP] == "*" {
        isMatch(indexS, indexP+1)
          || (indexS < s.count && isMatch(indexS+1, indexP))
      } else {
        indexS < s.count
          && (p[indexP] == "?" || p[indexP] == s[indexS])
          && isMatch(indexS+1, indexP+1)
      }

      memo[memoKey] = result
      return result
    }

    return isMatch(0, 0)
  }
}
