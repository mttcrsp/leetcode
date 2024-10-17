/// https://leetcode.com/problems/string-to-integer-atoi/
struct StringToIntegerAtoi {
  func myAtoi(_ s: String) -> Int {
    var i = s.startIndex
    while i < s.endIndex, s[i] == " " {
      i = s.index(after: i)
    }

    var sign: Int32 = 1
    if i < s.endIndex {
      if s[i] == "+" {
        i = s.index(after: i)
      } else if s[i] == "-" {
        sign = -1
        i = s.index(after: i)
      }
    }

    while i < s.endIndex, s[i] == "0" {
      i = s.index(after: i)
    }

    let characterToDigit: [Character: Int32] = [
      "1": 1, "2": 2, "3": 3, "4": 4, "5": 5,
      "6": 6, "7": 7, "8": 8, "9": 9, "0": 0,
    ]

    var overflow = false
    var value: Int32 = 0
    while i < s.endIndex {
      guard let digit = characterToDigit[s[i]] else { break }
      (value, overflow) = value.multipliedReportingOverflow(by: 10)
      guard !overflow else { break }
      (value, overflow) = value.addingReportingOverflow(digit*sign)
      guard !overflow else { break }
      i = s.index(after: i)
    }

    if overflow {
      return sign == 1 ? Int(Int32.max) : Int(Int32.min)
    } else {
      return Int(value)
    }
  }
}
