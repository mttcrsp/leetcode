/// https://leetcode.com/problems/zigzag-conversion/
struct ZigzagConversion {
  func convert(_ s: String, _ numRows: Int) -> String {
    guard numRows > 1 else { return s }

    var strings = [String](repeating: "", count: numRows)
    var value = 0, isIncreasing = false
    for character in s {
      strings[value].append(character)
      (value, isIncreasing) = value.next(upTo: numRows, isIncreasing: isIncreasing)
    }

    var result = ""
    for string in strings {
      result += string
    }
    return result
  }
}

private extension Int {
  func next(upTo max: Int, isIncreasing: Bool) -> (value: Int, isIncreasing: Bool) {
    switch (isIncreasing, self) {
    case (true, max-1):
      (self-1, false)
    case (true, _):
      (self+1, true)
    case (false, 0):
      (self+1, true)
    case (false, _):
      (self-1, false)
    }
  }
}
