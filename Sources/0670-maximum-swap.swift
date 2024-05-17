import Collections

/// https://leetcode.com/problems/maximum-swap/
struct MaximumSwap {
  func maximumSwap(_ num: Int) -> Int {
    var digits: Deque<Int> = []
    var counts = [Int](repeating: 0, count: 10)
    var remaining = num
    while remaining > 0 {
      let digit = remaining%10
      digits.prepend(digit)
      counts[digit] += 1
      remaining /= 10
    }

    var mismatch: (Int, Int)?
    var result = [Int](repeating: 0, count: digits.count)
    var i = 0
    loop: for (number, count) in counts.enumerated().reversed() {
      for _ in 0 ..< count {
        defer { i += 1 }
        result[i] = number
        if digits[i] != result[i] {
          mismatch = (digits[i], result[i])
          break loop
        }
      }
    }

    if let (old, new) = mismatch {
      var j = digits.count-1
      while j >= i {
        defer { j -= 1 }
        if mismatch != nil, digits[j] == new {
          result[j] = old
          mismatch = nil
        } else {
          result[j] = digits[j]
        }
      }
    }

    var number = 0
    for digit in result {
      number = number*10+digit
    }

    return number
  }
}
