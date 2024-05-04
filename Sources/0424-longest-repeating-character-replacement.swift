/// https://leetcode.com/problems/longest-repeating-character-replacement/
struct LongestRepeatingCharacterReplacement {
  func characterReplacement(_ s: String, _ k: Int) -> Int {
    let s = Array(s)
    var maxLength = 0
    var counts: [Character: Int] = [:]
    var maxCount = 0
    var lhs = 0
    for rhs in s.indices {
      counts[s[rhs], default: 0] += 1
      maxCount = max(maxCount, counts[s[rhs], default: 0])

      while rhs-lhs+1-maxCount > k, let count = counts[s[lhs]] {
        if count == 1 {
          counts[s[lhs]] = nil
        } else {
          counts[s[lhs]] = count-1
        }
        lhs = s.index(after: lhs)
      }

      maxLength = max(maxLength, rhs-lhs+1)
    }

    return maxLength
  }
}
