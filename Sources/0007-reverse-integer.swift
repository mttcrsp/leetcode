/// https://leetcode.com/problems/reverse-integer/
import Foundation

struct ReverseInteger {
  func reverse(_ x: Int) -> Int {
    var overflow = false
    var result: Int32 = 0
    var remainder = x
    while remainder != 0 {
      let digit = remainder % 10
      (result, overflow) = result.multipliedReportingOverflow(by: 10)
      if overflow { return 0 }
      (result, overflow) = result.addingReportingOverflow(Int32(digit))
      if overflow { return 0 }
      remainder /= 10
    }
    return Int(result)
  }
}
