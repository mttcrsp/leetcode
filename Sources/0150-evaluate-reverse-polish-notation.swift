/// https://leetcode.com/problems/evaluate-reverse-polish-notation/
struct EvaluateReversePolishNotation {
  func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []

    func perform(_ operation: (Int, Int) -> Int) {
      let rhs = stack.removeLast()
      let lhs = stack.removeLast()
      stack.append(operation(lhs, rhs))
    }

    for token in tokens {
      if let integer = Int(token) {
        stack.append(integer)
      } else if token == "+" {
        perform(+)
      } else if token == "-" {
        perform(-)
      } else if token == "*" {
        perform(*)
      } else if token == "/" {
        perform(/)
      }
    }

    return stack.last!
  }
}
