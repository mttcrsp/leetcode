/// https://leetcode.com/problems/maximum-value-of-a-string-in-an-array/
struct MaximumValueOfAStringInAnArray {
  func maximumValue(_ strings: [String]) -> Int {
    var max = 0

    for string in strings {
      var count = 0
      var value = 0
      var isNumber = true

      for character in string {
        count += 1
        if isNumber, let number = Int(String(character)) {
          value *= 10
          value += number
        } else {
          isNumber = false
        }
      }

      max = Swift.max(max, isNumber ? value : count)
    }

    return max
  }
}
