/// https://leetcode.com/problems/long-pressed-name/
struct LongPressedName {
  func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var i = 0

    for character in typed {
      if i < name.count, character == name.character(at: i) {
        i += 1
      } else if i <= 0 || i > name.count || character != name.character(at: i-1) {
        return false
      }
    }

    return i == name.count
  }
}

private extension String {
  func character(at integerIndex: Int) -> Character { // only safe of ascii strings
    self[index(startIndex, offsetBy: integerIndex)]
  }
}
