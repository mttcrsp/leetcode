/// https://leetcode.com/problems/removing-stars-from-a-string/
struct RemovingStarsFromAString {
  func removeStars(_ s: String) -> String {
    var result = ""
    for character in s {
      if character == "*" {
        result.removeLast()
      } else {
        result.append(character)
      }
    }
    return result
  }
}
