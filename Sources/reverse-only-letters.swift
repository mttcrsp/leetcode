extension Solution {
  func reverseOnlyLetters(_ S: String) -> String {
    var result = Array(S)
    var left = 0, right = result.count - 1

    while left < right {
      let leftValid = result[left].isLetter
      let rightValid = result[right].isLetter

      if leftValid, rightValid {
        result.swapAt(left, right); left += 1; right -= 1
      }

      if !leftValid {
        left += 1
      }

      if !rightValid {
        right += 1
      }
    }

    return String(result)
  }
}
