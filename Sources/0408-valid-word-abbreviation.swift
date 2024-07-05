/// https://leetcode.com/problems/valid-word-abbreviation/
struct ValidWordAbbreviation {
  func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
    let word = Array(word), abbr = Array(abbr)
    var wordIndex = word.startIndex
    var abbrIndex = abbr.startIndex
    var wordChar: Character { word[wordIndex] }
    var abbrChar: Character { abbr[abbrIndex] }
    while wordIndex < word.endIndex, abbrIndex < abbr.endIndex {
      var numberFound = false
      var number = 0
      while abbrIndex < abbr.endIndex, let digit = Int(String(abbrChar)) {
        if !numberFound, digit == 0 { return false }
        numberFound = true
        number = (number*10)+digit
        abbrIndex = abbr.index(after: abbrIndex)
      }

      if numberFound {
        wordIndex = abbr.index(wordIndex, offsetBy: number)
      } else if wordChar == abbrChar {
        wordIndex = word.index(after: wordIndex)
        abbrIndex = abbr.index(after: abbrIndex)
      } else { // wordChar != abbrChar
        return false
      }
    }

    return wordIndex == word.endIndex && abbrIndex == abbr.endIndex
  }
}
