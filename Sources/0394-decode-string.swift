import Foundation

/// https://leetcode.com/problems/decode-string/
struct DecodeString {
  func decodeString(_ s: String) -> String {
    var stack: [(Int, String)] = []
    var string = ""
    var number = 0
    for character in s {
      switch character {
      case "[":
        stack.append((number, string))
        string = ""
        number = 0
      case "]":
        let (count, previous) = stack.removeLast()
        string = previous+String(repeating: string, count: count)
      case let character where character.isNumber:
        number = number*10+Int(String(character))!
      case let character:
        string.append(character)
      }
    }

    return string
  }
}
