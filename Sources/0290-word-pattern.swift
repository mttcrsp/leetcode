/// https://leetcode.com/problems/word-pattern/
struct WordPattern {
  func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let words = s.components(separatedBy: " ")
    let characters = Array(pattern)
    guard words.count == characters.count
    else { return false }

    var matchedWords: Set<String> = []
    var dictionary: [Character: String] = [:]
    for (character, word) in zip(characters, words) {
      switch (dictionary[character], matchedWords.contains(word)) {
      case (.none, false):
        dictionary[character] = word
        matchedWords.insert(word)
      case (.some(word), true):
        continue
      case _:
        return false
      }
    }

    return true
  }
}
