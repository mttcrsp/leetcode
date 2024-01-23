/// https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/
struct DivideAStringIntoGroupsOfSizeK {
  func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
    var result: [Substring] = []
    for i in 0 ..< s.count/k {
      let lhs = s.index(s.startIndex, offsetBy: i*k)
      let rhs = s.index(lhs, offsetBy: k)
      result.append(s[lhs ..< rhs])
    }

    if s.count%k > 0 {
      let lhs = s.index(s.endIndex, offsetBy: -(s.count%k))
      let rhs = s.endIndex
      var last = s[lhs ..< rhs]
      last.append(contentsOf: String(repeating: fill, count: k-(s.count%k)))
      result.append(last)
    }

    return result.map(String.init)
  }
}
