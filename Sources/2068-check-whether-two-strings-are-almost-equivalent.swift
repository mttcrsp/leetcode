/// https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent/
struct CheckWhetherTwoStringsAreAlmostEquivalent {
  func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
    let frequencies1 = word1.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    let frequencies2 = word2.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    let characters = Set(frequencies1.keys).union(frequencies2.keys)
    return characters.allSatisfy { character in
      let frequency1 = frequencies1[character, default: 0]
      let frequency2 = frequencies2[character, default: 0]
      return abs(frequency1-frequency2) <= 3
    }
  }
}
