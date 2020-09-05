extension Solution {
  func isPalindrome(_ s: String) -> Bool {
    var i = 0
    var j = s.count - 1
    let characters = Array(s)

    while i < j {
      guard characters[i].isLetter || characters[i].isNumber else {
        i += 1
        continue
      }

      guard characters[j].isLetter || characters[j].isNumber else {
        j -= 1
        continue
      }

      guard characters[i].lowercased() == characters[j].lowercased() else {
        return false
      }

      i += 1
      j -= 1
    }

    return true
  }
}
