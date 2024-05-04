/// https://leetcode.com/problems/minimum-window-substring/
struct MinimumWindowSubstring {
  func minWindow(_ s: String, _ t: String) -> String {
    var countsT: [Character: Int] = [:]
    for character in t {
      countsT[character, default: 0] += 1
    }

    let s = Array(s)
    var result: ArraySlice<Character>?
    var matches = 0
    var countsS: [Character: Int] = [:]
    var lhs = 0
    for rhs in s.indices {
      countsS[s[rhs], default: 0] += 1
      if let countT = countsT[s[rhs]], countT == countsS[s[rhs], default: 0] {
        matches += 1
      }

      while matches == countsT.count {
        if result == nil || result!.count > rhs-lhs+1 {
          result = s[lhs ... rhs]
        }

        countsS[s[lhs], default: 0] -= 1
        if let countT = countsT[s[lhs]], countT > countsS[s[lhs], default: 0] {
          matches -= 1
        }
        lhs += 1
      }
    }

    if let result {
      return String(result)
    } else {
      return ""
    }
  }
}
