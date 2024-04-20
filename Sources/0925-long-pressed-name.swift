/// https://leetcode.com/problems/long-pressed-name/
struct LongPressedName {
  func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var nameIndex = name.startIndex
    for typedIndex in typed.indices {
      if nameIndex < name.endIndex, name[nameIndex] == typed[typedIndex] {
        nameIndex = name.index(after: nameIndex)
      } else if typedIndex == typed.startIndex || typed[typedIndex] != typed[typed.index(before: typedIndex)] {
        return false
      }
    }
    return nameIndex == name.endIndex
  }
}
