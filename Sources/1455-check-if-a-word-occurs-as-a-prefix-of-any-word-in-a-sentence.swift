/// https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence/
struct CheckIfAWordOccursAsAPrefixOfAnyWordInASentence {
  func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
    for (i, word) in sentence.split(separator: " ").enumerated() {
      if word.hasPrefix(searchWord) {
        return i + 1
      }
    }
    return -1
  }
}
