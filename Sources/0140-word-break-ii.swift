/// https://leetcode.com/problems/word-break-ii/
struct WordBreakIi {
  func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
    let s = Array(s), wordDict = Array(wordDict)

    var result: [String] = []
    var combination: [String] = []
    func backtrack(_ index: Int = 0) {
      if index == s.count {
        result.append(combination.joined(separator: " "))
        return
      } else if index > s.count {
        return
      }

      for word in wordDict {
        let lowerbound = index
        let upperbound = index+word.count
        if upperbound <= s.count, String(s[lowerbound ..< upperbound]) == word {
          combination.append(word)
          backtrack(index+word.count)
          combination.removeLast()
        }
      }
    }

    backtrack()
    return result
  }
}
