/// https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
struct DecryptStringFromAlphabetToIntegerMapping {
  func freqAlphabets(_ s: String) -> String {
    var string = Substring(s)
    var result = ""

    while let character = string.last {
      if character != "#" {
        result.append(charactersMapping[character]!)
        string = string.dropLast()
      } else {
        result.append(stringsMapping[string.suffix(3)]!)
        string = string.dropLast(3)
      }
    }

    return String(result.reversed())
  }
}

private let charactersMapping: [Character: Character] = [
  "1": "a",
  "2": "b",
  "3": "c",
  "4": "d",
  "5": "e",
  "6": "f",
  "7": "g",
  "8": "h",
  "9": "i",
]

private let stringsMapping: [Substring: String] = [
  "10#": "j",
  "11#": "k",
  "12#": "l",
  "13#": "m",
  "14#": "n",
  "15#": "o",
  "16#": "p",
  "17#": "q",
  "18#": "r",
  "19#": "s",
  "20#": "t",
  "21#": "u",
  "22#": "v",
  "23#": "w",
  "24#": "x",
  "25#": "y",
  "26#": "z",
]
