extension Solution {
  func convertToBase7(_ num: Int) -> String {
    if num == 0 { return "0" }
    let isNegative = num < 0

    var remainder = abs(num)
    var result = ""
    while remainder != 0 {
      result += "\(remainder % 7)"
      remainder /= 7
    }

    if isNegative {
      return "-" + result.reversed()
    } else {
      return String(result.reversed())
    }
  }
}
