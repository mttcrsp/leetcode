struct PlusOne {
  func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var carry = 1
    var i = digits.count - 1

    while carry > 0, i >= 0 {
      let digit = digits[i]
      digits[i] = (digit + carry) % 10
      carry = (digit + carry) / 10
      i -= 1
    }

    if carry > 0 {
      digits.insert(1, at: 0)
    }

    return digits
  }
}
