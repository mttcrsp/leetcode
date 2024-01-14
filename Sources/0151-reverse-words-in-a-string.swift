/// https://leetcode.com/problems/reverse-words-in-a-string/
struct ReverseWordsInAString {
  func reverseWords(_ s: String) -> String {
    var s = Array(s)
    s.reverse()

    var firstWordStart: Int!
    var lastWordEnd: Int!
    var i = 0
    while i < s.count {
      if s[i] == " " {
        i += 1
        continue
      }

      var j = i
      while j < s.count, s[j] != " " {
        j += 1
      }

      s.reverseSubrange(i ..< j)
      firstWordStart = firstWordStart ?? i
      lastWordEnd = j
      i = j+1
    }

    var result = ""
    for i in firstWordStart ..< lastWordEnd {
      if s[i] == " ", result.last == " " {
        continue
      } else {
        result.append(s[i])
      }
    }

    return result
  }
}

private extension Array {
  mutating func reverseSubrange(_ range: Range<Int>) {
    var lhs = range.lowerBound
    var rhs = range.upperBound-1
    while lhs < rhs {
      swapAt(lhs, rhs)
      lhs += 1
      rhs -= 1
    }
  }
}
