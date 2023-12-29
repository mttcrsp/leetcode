/// https://leetcode.com/problems/goat-latin/
struct GoatLatin {
  func toGoatLatin(_ string: String) -> String {
    var words = string.components(separatedBy: " ")

    for index in words.indices {
      guard let initial = words[index].first else { continue }

      let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      if vowels.contains(initial) {
        words[index] += "ma"
      } else {
        words[index].removeFirst()
        words[index] += "\(initial)ma"
      }

      words[index] += String(repeating: "a", count: index+1)
    }

    return words.joined(separator: " ")
  }
}
