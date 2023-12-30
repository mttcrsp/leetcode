/// https://leetcode.com/problems/largest-3-same-digit-number-in-string/
struct Largest3SameDigitNumberInString {
  func largestGoodInteger(_ num: String) -> String {
    guard num.count >= 3 else { return "" }

    var maxGoodInteger: Int?
    for i in num.indices.dropLast(2) {
      let digit1 = num[i]
      let digit2 = num[num.index(i, offsetBy: 1)]
      let digit3 = num[num.index(i, offsetBy: 2)]
      guard digit1 == digit2, digit2 == digit3 else { continue }

      var substring = ""
      substring.append(digit1)
      substring.append(digit1)
      substring.append(digit1)
      if let goodInteger = Int(substring) {
        if maxGoodInteger == nil || goodInteger > maxGoodInteger! {
          maxGoodInteger = goodInteger
        }
      }
    }

    switch maxGoodInteger {
    case nil: return ""
    case 0: return "000"
    case let value?: return value.description
    }
  }
}
