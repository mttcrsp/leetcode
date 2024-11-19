/// https://leetcode.com/problems/defuse-the-bomb/
struct DefuseTheBomb {
  func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    var result = [Int](repeating: 0, count: code.count)
    guard k != 0 else { return result }

    var lhs = k > 0 ? 1 : code.count-abs(k)
    var rhs = k > 0 ? k : code.count-1
    var sum = 0
    for index in lhs ... rhs {
      sum += code[index]
    }

    for index in 0 ..< code.count {
      result[index] = sum
      sum -= code[lhs]
      lhs = (lhs+1)%code.count
      rhs = (rhs+1)%code.count
      sum += code[rhs]
    }

    return result
  }
}
