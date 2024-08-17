/// https://leetcode.com/problems/regular-expression-matching/
struct RegularExpressionMatching {
  func isMatch(_ s: String, _ p: String) -> Bool {
    let s = Array(s)
    let p = Array(p)

    let dpRow = [Bool](repeating: false, count: p.count+1)
    var dp = [[Bool]](repeating: dpRow, count: s.count+1)
    dp[s.count][p.count] = true

    for i in (0 ... s.count).reversed() {
      for j in (0 ..< p.count).reversed() {
        let match = i < s.count && (p[j] == s[i] || p[j] == ".")
        if j+1 < p.count, p[j+1] == "*" {
          dp[i][j] = dp[i][j+2] || (match && dp[i+1][j])
        } else {
          dp[i][j] = match && dp[i+1][j+1]
        }
      }
    }

    return dp[0][0]
  }
}
