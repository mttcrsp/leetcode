/// https://leetcode.com/problems/uncommon-words-from-two-sentences/
struct UncommonWordsFromTwoSentences {
  func uncommonFromSentences(_ x: String, _ y: String) -> [String] {
    let wordsX = x.split(separator: " ").map(String.init)
    let wordsY = y.split(separator: " ").map(String.init)
    let allWords = wordsX + wordsY

    // This set does not serve uniqueing purposes. Rather
    // it provides O(1) containment lookups.
    var commonWords: Set<String> = []
    var uncommonWords: Set<String> = []

    // Runtime is 0(|x| + |y|)
    for word in allWords where !commonWords.contains(word) {
      if uncommonWords.contains(word) {
        uncommonWords.remove(word)
        commonWords.insert(word)
      } else {
        // You could reduce memory usage by removing
        // each word from allWords here. This however
        // would negatively impact the runtime of this
        // implementation.
        uncommonWords.insert(word)
      }
    }

    return Array(uncommonWords)
  }
}
