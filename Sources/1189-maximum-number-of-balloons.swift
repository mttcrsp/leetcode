/// https://leetcode.com/problems/maximum-number-of-balloons/
struct MaximumNumberOfBalloons {
  func maxNumberOfBalloons(_ text: String) -> Int {
    var occurrences: [Character: Int] = [:]
    for character in text {
      occurrences[character, default: 0] += 1
    }

    let countB = occurrences["b"] ?? 0
    let countA = occurrences["a"] ?? 0
    let countL = occurrences["l"] ?? 0
    let countO = occurrences["o"] ?? 0
    let countN = occurrences["n"] ?? 0

    let normalizedCounts = [countB, countA, countL/2, countO/2, countN]
    return normalizedCounts.min() ?? 0
  }
}
