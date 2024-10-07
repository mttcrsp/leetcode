/// https://leetcode.com/problems/letter-combinations-of-a-phone-number/
struct LetterCombinationsOfAPhoneNumber {
  func letterCombinations(_ digits: String) -> [String] {
    guard !digits.isEmpty else { return [] }

    let letters: [Character: String] = [
      "2": "abc", "3": "def", "4": "ghi",
      "5": "jkl", "6": "mno", "7": "pqrs",
      "8": "tuv", "9": "wxyz",
    ]

    var combinations: [String] = []
    var combination = ""
    func backtrack(from index: String.Index) {
      if index == digits.endIndex {
        combinations.append(combination)
      } else {
        for character in letters[digits[index], default: ""] {
          combination.append(character)
          backtrack(from: digits.index(after: index))
          combination.removeLast()
        }
      }
    }

    backtrack(from: digits.startIndex)
    return combinations
  }
}
