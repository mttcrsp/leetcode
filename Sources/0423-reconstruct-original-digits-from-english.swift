/// https://leetcode.com/problems/reconstruct-original-digits-from-english/
struct ReconstructOriginalDigitsFromEnglish {
  func originalDigits(_ s: String) -> String {
    var frequencies: [Character: Int] = [:]
    for character in s {
      frequencies[character, default: 0] += 1
    }

    let sequence: [(Character, String, Character)] = [
      ("0", "zero", "z"), ("2", "two", "w"), ("4", "four", "u"),
      ("6", "six", "x"), ("8", "eight", "g"), ("7", "seven", "s"),
      ("1", "one", "o"), ("3", "three", "h"), ("5", "five", "v"),
      ("9", "nine", "i"),
    ]

    var strings: [String] = []
    for (digit, word, unique) in sequence {
      if let count = frequencies[unique], count > 0 {
        strings.append(.init(repeating: digit, count: count))
        for _ in 1 ... count {
          for unique in word {
            frequencies[unique, default: 0] -= 1
          }
        }
      }
    }

    return strings.sorted().joined()
  }
}
