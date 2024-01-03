/// https://leetcode.com/problems/number-of-valid-words-in-a-sentence/
struct NumberOfValidWordsInASentence {
  func countValidWords(_ sentence: String) -> Int {
    func isValidWord(_ token: String) -> Bool {
      var hyphenIndex: String.Index?
      for index in token.indices {
        switch token[index] {
        case "!", ".", ",":
          guard index == token.index(before: token.endIndex)
          else { return false }
        case "-":
          guard hyphenIndex == nil else { return false }
          hyphenIndex = index
        case let value where value.isNumber:
          return false
        case _:
          continue
        }
      }

      if let hyphenIndex {
        guard
          hyphenIndex != token.startIndex,
          hyphenIndex != token.index(before: token.endIndex),
          token[token.index(after: hyphenIndex)].isLetter,
          token[token.index(before: hyphenIndex)].isLetter
        else { return false }
      }

      return true
    }

    var tokens = [""]
    for character in sentence {
      if character != " " {
        tokens[tokens.count-1].append(character)
      } else if tokens.last != "" {
        tokens.append("")
      }
    }
    if tokens.last == "" {
      tokens.removeLast()
    }

    var validWords = 0
    for token in tokens where isValidWord(token) {
      validWords += 1
    }

    return validWords
  }
}

// let input = "!g 3 !sy "
// let output = 0
// print(NumberOfValidWordsInASentence().countValidWords(input), output)
