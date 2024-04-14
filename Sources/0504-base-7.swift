/// https://leetcode.com/problems/base-7/
struct Base7 {
  func convertToBase7(_ num: Int) -> String {
    var i = 1
    var remainder = abs(num)
    var value = 0
    while remainder > 0 {
      value += (remainder%7)*i
      remainder /= 7
      i *= 10
    }

    let signum = num < 0 ? "-" : ""
    return "\(signum)\(value)"
  }
}
