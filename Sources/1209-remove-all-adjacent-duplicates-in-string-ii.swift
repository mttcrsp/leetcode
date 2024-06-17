/// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/
struct RemoveAllAdjacentDuplicatesInStringIi {
  func removeDuplicates(_ s: String, _ k: Int) -> String {
    var stack: [(character: Character, count: Int)] = []
    for character in s {
      if !stack.isEmpty, character == stack[stack.count-1].character {
        stack[stack.count-1].count += 1
      } else {
        stack.append((character, 1))
      }

      if stack[stack.count-1].count == k {
        stack.removeLast()
      }
    }

    var result = ""
    for (character, count) in stack {
      result += String(repeating: character, count: count)
    }

    return result
  }
}
