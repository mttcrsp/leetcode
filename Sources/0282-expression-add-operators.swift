/// https://leetcode.com/problems/expression-add-operators/
struct ExpressionAddOperators {
  func addOperators(_ num: String, _ target: Int) -> [String] {
    let num = Array(num)

    var result: [String] = []
    func visit(_ lhs: Int = 0, _ expression: String = "", _ total: Int = 0, _ previous: Int = 0) {
      guard lhs < num.endIndex else {
        if total == target {
          result.append(expression)
        }
        return
      }

      for rhs in lhs ..< num.count {
        let string = String(num[lhs ... rhs])
        let number = Int(string)!
        if expression.isEmpty {
          visit(rhs+1, string, number, number)
        } else {
          visit(rhs+1, expression+"+"+string, total+number, number)
          visit(rhs+1, expression+"-"+string, total-number, -number)
          visit(rhs+1, expression+"*"+string, total-previous+number*previous, number*previous)
        }

        if num[lhs] == "0" {
          break
        }
      }
    }

    visit()
    return result
  }
}
