/// https://leetcode.com/problems/basic-calculator/
struct BasicCalculator {
  func calculate(_ string: String) -> Int {
    solve(parse(from: string))
  }

  private enum Token {
    case openParenthesis, closeParenthesis
    case plus, minus
    case number(Int)
  }

  private typealias Expression = [Token]

  private func solve(_ expression: Expression) -> Int {
    typealias Frame = (result: Int, operator: (Int, Int) -> Int)

    var frames: [Frame] = [(0, +)]
    for token in expression {
      switch token {
      case .openParenthesis:
        frames.append((0, +))
      case .closeParenthesis:
        let solved = frames.removeLast()
        let current = frames[frames.count-1]
        frames[frames.count-1].result = current.operator(current.result, solved.result)
      case .plus:
        frames[frames.count-1].operator = (+)
      case .minus:
        frames[frames.count-1].operator = (-)
      case let .number(number):
        let current = frames[frames.count-1]
        frames[frames.count-1].result = current.operator(current.result, number)
      }
    }

    let solved = frames.removeLast()
    return solved.result
  }

  private func parse(from string: String) -> Expression {
    var expression: Expression = []
    for character in string {
      switch character {
      case " ": continue
      case "+": expression.append(.plus)
      case "-": expression.append(.minus)
      case "(": expression.append(.openParenthesis)
      case ")": expression.append(.closeParenthesis)
      case _:
        guard let digit = Int(String(character)) else {
          continue
        }

        if let previousToken = expression.last, case let .number(previousNumber) = previousToken {
          expression[expression.count-1] = .number((previousNumber*10)+digit)
        } else {
          expression.append(.number(digit))
        }
      }
    }

    return expression
  }
}
