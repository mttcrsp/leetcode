/// https://leetcode.com/problems/valid-word-abbreviation/
struct ValidWordAbbreviation {
  func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
    let word = Array(word)
    let abbr = Array(abbr)
    var wordIndex = 0
    var abbrIndex = 0
    var abbrCharacter: Character { abbr[abbrIndex] }
    var wordCharacter: Character { word[wordIndex] }
    while wordIndex < word.count, abbrIndex < abbr.count {
      var skip: Int?
      while abbrIndex < abbr.count, let number = Int(String(abbrCharacter)) {
        abbrIndex += 1
        if let previousNumber = skip {
          skip = previousNumber*10+number
        } else if number != 0 {
          skip = number
        } else {
          return false
        }
      }

      if let skip {
        wordIndex += skip
      } else if wordCharacter == abbrCharacter {
        abbrIndex += 1
        wordIndex += 1
      } else {
        return false
      }
    }

    return wordIndex == word.endIndex && abbrIndex == abbr.count
  }
}
