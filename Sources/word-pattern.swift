import Foundation

extension Solution {
  func wordPattern(_ pattern: String, _ string: String) -> Bool {
    // This may be very inefficient in case of long strings
    // and small patterns as you may end up scanning the whole
    // string without the actual need to do so.
    let words = string.components(separatedBy: " ")
    guard words.count == pattern.count else { return false }

    var patternMapping: [Character: String] = [:]
    var knownWords: Set<String> = []

    for (char, word) in zip(pattern, words) {
      // This isKnownWord is not used when a mapping is
      // already known for the current char. I extracted it
      // only to improve clarity at the expense of performance.
      let isKnownWord = knownWords.contains(word)
      let expectedWord = patternMapping[char]

      switch (expectedWord, isKnownWord) {
      case (nil, false): // never encountered word
        knownWords.insert(word); patternMapping[char] = word
      case (nil, true): // word was found mapped to multiple chars in pattern
        return false
      case (word, _): // matched word
        continue
      case (_, _): // char in pattern was found mapped to multiple words
        return false
      }
    }

    return true
  }
}
