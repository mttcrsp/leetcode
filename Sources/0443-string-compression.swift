/// https://leetcode.com/problems/string-compression/
struct StringCompression {
  func compress(_ chars: inout [Character]) -> Int {
    var compressedIndex = 0
    var index = 0
    while index < chars.count {
      let character = chars[index]

      var count = 0
      while index < chars.count, chars[index] == character {
        index += 1
        count += 1
      }

      chars[compressedIndex] = character
      compressedIndex += 1
      if count > 1 {
        for digit in String(count) {
          chars[compressedIndex] = digit
          compressedIndex += 1
        }
      }
    }

    return compressedIndex
  }
}
