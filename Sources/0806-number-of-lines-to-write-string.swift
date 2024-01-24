/// https://leetcode.com/problems/number-of-lines-to-write-string/
struct NumberOfLinesToWriteString {
  func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
    let referenceCharacter: Character = "a"
    func width(of character: Character) -> Int {
      widths[Int(character.asciiValue!-referenceCharacter.asciiValue!)]
    }

    var result = [1, 0]
    for character in s {
      let width = width(of: character)
      if result[1]+width > 100 {
        result[0] += 1
        result[1] = width
      } else {
        result[1] += width
      }
    }

    return result
  }
}
