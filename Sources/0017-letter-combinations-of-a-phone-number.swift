/// https://leetcode.com/problems/letter-combinations-of-a-phone-number/
struct LetterCombinationsOfAPhoneNumber {
  func letterCombinations(_ digits: String) -> [String] {
    guard !digits.isEmpty else { return [] }

    let mapping: [Character: [Character]] = [
      "2": ["a", "b", "c"],
      "3": ["d", "e", "f"],
      "4": ["g", "h", "i"],
      "5": ["j", "k", "l"],
      "6": ["m", "n", "o"],
      "7": ["p", "q", "r", "s"],
      "8": ["t", "u", "v"],
      "9": ["w", "x", "y", "z"],
    ]

    var strings = [""]
    for digit in digits {
      var newStrings: [String] = []
      for character in mapping[digit, default: []] {
        for var newString in strings {
          newString.append(character)
          newStrings.append(newString)
        }
      }
      strings = newStrings
    }
    return strings
  }
}
