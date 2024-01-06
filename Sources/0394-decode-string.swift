import Foundation

/// https://leetcode.com/problems/decode-string/
@available(macOS 10.15, *)
struct DecodeString {
  func decodeString(_ s: String) -> String {
    var scanner = Scanner(string: s)

    func scanRawString() -> String? {
      scanner.scanCharacters(from: .lowercaseLetters)
    }

    func scanEncodedString() -> (Int, String)? {
      guard
        let count = scanner.scanInt(),
        let _ = scanner.scanCharacters(from: .init(charactersIn: "["))
      else { return nil }
      var expectedBrackets = 1
      var index = scanner.currentIndex
      var matchedString = ""
      while expectedBrackets > 0, index < scanner.string.endIndex {
        defer { index = scanner.string.index(after: index) }
        let character = scanner.string[index]
        matchedString.append(character)
        switch character {
        case "[": expectedBrackets += 1
        case "]": expectedBrackets -= 1
        default: continue
        }
      }

      guard expectedBrackets == 0
      else { preconditionFailure("malformed input string") }

      _ = scanner.scanString(matchedString)
      return (count, String(matchedString.dropLast()))
    }

    while true {
      var result = ""
      var decoded = false
      while !scanner.isAtEnd {
        if let string = scanRawString() {
          result += string
        } else if let (count, string) = scanEncodedString() {
          decoded = true
          for _ in 1 ... count { result += string }
        }
      }

      if !decoded {
        return result
      } else {
        scanner = Scanner(string: result)
      }
    }
  }
}
