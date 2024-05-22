/// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
struct RemoveAllAdjacentDuplicatesInString {
  func removeDuplicates(_ s: String) -> String {
    var result = ""
    for character in s {
      if result.last == character {
        result.removeLast()
      } else {
        result.append(character)
      }
    }

    return result
  }
}
