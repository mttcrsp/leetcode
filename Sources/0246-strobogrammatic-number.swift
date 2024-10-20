/// https://leetcode.com/problems/strobogrammatic-number/
struct StrobogrammaticNumber {
  func isStrobogrammatic(_ num: String) -> Bool {
    let upsideDownMapping: [Character: Character] =
      ["0": "0", "1": "1", "6": "9", "8": "8", "9": "6"]

    var lhs = num.startIndex
    var rhs = num.index(before: num.endIndex)
    while lhs < rhs {
      guard let upsideDownLhs = upsideDownMapping[num[lhs]]
      else { return false }

      guard upsideDownLhs == num[rhs]
      else { return false }

      lhs = num.index(after: lhs)
      rhs = num.index(before: rhs)
    }

    if lhs == rhs {
      return num[lhs] == upsideDownMapping[num[lhs]]
    }

    return true
  }
}
