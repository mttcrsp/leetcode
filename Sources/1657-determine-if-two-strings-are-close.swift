/// https://leetcode.com/problems/determine-if-two-strings-are-close/
struct DetermineIfTwoStringsAreClose {
  func closeStrings(_ word1: String, _ word2: String) -> Bool {
    let characterFrequencies1 = word1.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    let characterFrequencies2 = word2.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    let alphabet1 = Set(characterFrequencies1.keys)
    let alphabet2 = Set(characterFrequencies2.keys)
    guard alphabet1 == alphabet2 else { return false }
    let frequencies1 = characterFrequencies1.reduce(into: [:]) { $0[$1.value, default: 0] += 1 }
    let frequencies2 = characterFrequencies2.reduce(into: [:]) { $0[$1.value, default: 0] += 1 }
    return frequencies1 == frequencies2
  }
}
