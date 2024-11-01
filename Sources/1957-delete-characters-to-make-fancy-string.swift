/// https://leetcode.com/problems/delete-characters-to-make-fancy-string/
struct DeleteCharactersToMakeFancyString {
  func makeFancyString(_ s: String) -> String {
    var result = ""
    var prev1: Character?
    var prev2: Character?
    for character in s {
      if character == prev1, character == prev2 {
        continue
      }
      result.append(character)
      prev2 = prev1
      prev1 = character
    }

    return result
  }
}
