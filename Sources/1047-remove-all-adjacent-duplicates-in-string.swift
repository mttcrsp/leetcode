/// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
struct RemoveAllAdjacentDuplicatesInString {
  func removeDuplicates(_ S: String) -> String {
    var result = Array(S)
    var index = result.count-1

    while index > 0 {
      if result[index] == result[index-1] {
        result.remove(at: index)
        result.remove(at: index-1)
        index = min(index+1, result.count-1)
      } else {
        index -= 1
      }
    }

    return String(result)
  }
}
