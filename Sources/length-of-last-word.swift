extension Solution {
  func lengthOfLastWord(_ s: String) -> Int {
    var string = s
    while string.last == " " {
      string.removeLast()
    }

    for (index, character) in string.reversed().enumerated() where character == " " {
      return index
    }
    return string.count
  }
}
