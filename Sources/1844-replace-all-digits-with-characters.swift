/// https://leetcode.com/problems/replace-all-digits-with-characters/
struct ReplaceAllDigitsWithCharacters {
  func replaceDigits(_ string: String) -> String {
    let zeroAsciiValue = ("0" as Character).asciiValue!
    let shift: (Character, Character) -> Character = { character, digit in
      let value = character.asciiValue!
      let offset = digit.asciiValue! - zeroAsciiValue
      return Character(Unicode.Scalar(value + offset))
    }

    var characters = Array(string)
    for (index, digit) in characters.enumerated() where index % 2 == 1 {
      characters[index] = shift(characters[index - 1], digit)
    }
    return String(characters)
  }
}
