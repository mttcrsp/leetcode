/// https://leetcode.com/problems/calculate-digit-sum-of-a-string/
struct CalculateDigitSumOfAString {
  func digitSum(_ string: String, _ k: Int) -> String {
    guard string.count > k else {
      return string
    }

    var string = string
    var next = ""

    while !string.isEmpty {
      let prefix = string.prefix(k)
      next += String(digitSum(prefix))
      string.removeFirst(prefix.count)
    }

    return digitSum(next, k)
  }

  private func digitSum(_ substring: Substring) -> Int {
    var sum = 0
    for character in substring {
      sum += Int(character.asciiValue!)-48
    }
    return sum
  }
}
