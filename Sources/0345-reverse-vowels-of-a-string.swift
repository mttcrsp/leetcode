/// https://leetcode.com/problems/reverse-vowels-of-a-string/
struct ReverseVowelsOfAString {
  func reverseVowels(_ s: String) -> String {
    let vowels: Set<Character> = [
      "a", "e", "i", "o", "u",
      "A", "E", "I", "O", "U",
    ]

    var index = s.endIndex
    var result = ""
    for var character in s {
      if vowels.contains(character) {
        index = s.index(before: index)
        while !vowels.contains(s[index]) {
          index = s.index(before: index)
        }
        character = s[index]
      }

      result.append(character)
    }

    return result
  }
}
