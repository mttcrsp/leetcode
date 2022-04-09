/// https://leetcode.com/problems/maximum-number-of-occurrences-of-a-substring/
struct MaximumNumberOfOccurrencesOfASubstring {
  func maxFreq(_ s: String, _ maxLetters: Int, _ minSize: Int, _: Int) -> Int {
    let string = Array(s)
    var letters: [Character: Int] = [:]
    var occurrences: [ArraySlice<Character>: Int] = [:]

    for upperbound in string.indices {
      letters[string[upperbound], default: 0] += 1

      let lowerbound = upperbound - minSize + 1
      guard lowerbound >= 0 else { continue }

      if letters.count <= maxLetters {
        let substring = string[lowerbound ... upperbound]
        occurrences[substring, default: 0] += 1
      }

      let updated = letters[string[lowerbound], default: 0] - 1
      letters[string[lowerbound]] = updated == 0 ? nil : updated
    }

    return occurrences.values.max() ?? 0
  }
}
