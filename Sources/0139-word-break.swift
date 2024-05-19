/// https://leetcode.com/problems/word-break/
struct WordBreak {
  func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    let s = Array(s), wordDict = wordDict.map(Array.init)

    var dp = [Bool](repeating: false, count: s.count+1)
    dp[s.count] = true

    for i in s.indices.reversed() {
      for word in wordDict {
        let lowerbound = i
        let upperbound = i+word.count
        if upperbound <= s.count, dp[upperbound], Array(s[lowerbound ..< upperbound]) == word {
          dp[i] = true
          break
        }
      }
    }

    return dp[0]
  }
}
