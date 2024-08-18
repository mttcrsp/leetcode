/// https://leetcode.com/problems/minimum-window-substring/
struct MinimumWindowSubstring {
  func minWindow(_ s: String, _ t: String) -> String {
    let s = Array(s)

    var substring: ArraySlice<Character>?
    var matches = 0
    var countsS: [Character: Int] = [:]
    var countsT: [Character: Int] = [:]
    for character in t {
      countsT[character, default: 0] += 1
    }

    var lhs = 0
    for rhs in s.indices {
      countsS[s[rhs], default: 0] += 1
      matches += countsS[s[rhs]] == countsT[s[rhs]] ? 1 : 0

      while matches == countsT.count {
        if substring == nil || substring!.count > rhs-lhs+1 {
          substring = s[lhs ... rhs]
        }

        matches -= countsS[s[lhs]] == countsT[s[lhs]] ? 1 : 0
        countsS[s[lhs], default: 0] -= 1
        lhs = s.index(after: lhs)
      }
    }

    if let substring {
      return String(substring)
    } else {
      return ""
    }
  }
}
