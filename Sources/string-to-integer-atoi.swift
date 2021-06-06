import Foundation

struct StringToIntegerAtoi {
  func myAtoi(_ string: String) -> Int {
    var i = string.startIndex
    while i < string.endIndex, string[i] == " " {
      i = string.index(after: i)
    }

    guard i < string.endIndex else { return 0 }

    var multiplier = 1
    switch string[i] {
    case "-": i = string.index(after: i); multiplier = -1
    case "+": i = string.index(after: i)
    default: break
    }

    let digitCharacters: Set<Character> = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

    var integer = 0
    while i < string.endIndex, digitCharacters.contains(string[i]) {
      var overflow = false
      (integer, overflow) = integer.addingReportingOverflow(Int(string[i].asciiValue! - ("0" as Character).asciiValue!))
      if overflow { return multiplier == 1 ? Int(Int32.max) : Int(Int32.min) }
      (integer, overflow) = integer.multipliedReportingOverflow(by: 10)
      if overflow { return multiplier == 1 ? Int(Int32.max) : Int(Int32.min) }
      i = string.index(after: i)
    }

    integer /= 10
    integer *= multiplier
    integer = min(Int(Int32.max), integer)
    integer = max(Int(Int32.min), integer)
    return integer
  }
}
