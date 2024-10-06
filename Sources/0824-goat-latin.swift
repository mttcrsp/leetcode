/// https://leetcode.com/problems/goat-latin/
struct GoatLatin {
  func toGoatLatin(_ sentence: String) -> String {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    var goatLatinWords: [String] = []
    for (index, var word) in sentence.components(separatedBy: " ").enumerated() {
      guard let initial = word.first else { continue }

      if !vowels.contains(initial) {
        word.removeFirst()
        word.append(initial)
      }

      word.append("ma")
      word.append(String(repeating: "a", count: index+1))
      goatLatinWords.append(word)
    }

    return goatLatinWords.joined(separator: " ")
  }
}
