/// https://leetcode.com/problems/evaluate-reverse-polish-notation/
struct EvaluateReversePolishNotation {
  func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []
    for token in tokens {
      if let operation = Operation(rawValue: token) {
        let rhs = stack.removeLast()
        let lhs = stack.removeLast()
        stack.append(operation.perform(lhs, rhs))
      } else if let value = Int(token) {
        stack.append(value)
      }
    }
    return stack[0]
  }

  enum Operation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"

    var perform: (Int, Int) -> Int {
      switch self {
      case .addition: (+)
      case .subtraction: (-)
      case .multiplication: (*)
      case .division: (/)
      }
    }
  }
}
