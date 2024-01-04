/// https://leetcode.com/problems/greatest-common-divisor-of-strings/
struct GreatestCommonDivisorOfStrings {
  func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    let candidateCount = gcd(str1.count, str2.count)
    let candidate = str1[str1.startIndex ..< str1.index(str1.startIndex, offsetBy: candidateCount)]

    var i = candidate.startIndex
    for character in str1 {
      guard character == candidate[i] else { return "" }
      let next = candidate.index(after: i)
      i = next == candidate.endIndex ? candidate.startIndex : next
    }

    i = candidate.startIndex
    for character in str2 {
      guard character == candidate[i] else { return "" }
      let next = candidate.index(after: i)
      i = next == candidate.endIndex ? candidate.startIndex : next
    }

    return String(candidate)
  }

  func gcd(_ x: Int, _ y: Int) -> Int {
    var a = 0
    var b = max(x, y)
    var r = min(x, y)
    while r != 0 {
      a = b
      b = r
      r = a%b
    }
    return b
  }
}
