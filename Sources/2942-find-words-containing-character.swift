/// https://leetcode.com/problems/find-words-containing-character/
struct FindWordsContainingCharacter {
  func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
    var indices: [Int] = []
    for (index, word) in words.enumerated() {
      if word.contains(x) {
        indices.append(index)
      }
    }
    return indices
  }
}
