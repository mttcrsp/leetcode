/// https://leetcode.com/problems/longest-common-prefix/
struct LongestCommonPrefix {
  func longestCommonPrefix(_ strings: [String]) -> String {
    let referenceString = strings[0]

    if strings.count == 1 {
      return referenceString
    }

    for index in referenceString.indices {
      let referenceCharacter = referenceString[index]
      for string in strings.dropFirst() {
        if index >= string.endIndex || string[index] != referenceCharacter {
          return String(referenceString[referenceString.startIndex ..< index])
        }
      }
    }

    return referenceString
  }
}
