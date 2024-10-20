/// https://leetcode.com/problems/basic-calculator-ii/
struct BasicCalculatorIi {
  func calculate(_ s: String) -> Int {
    let operators: Set<Character> = ["+", "-", "*", "/"]

    var result = 0
    var previous = 0
    var `operator`: Character = "+"
    var index = s.startIndex
    while index < s.endIndex {
      let character = s[index]
      if character.isNumber {
        var number = 0
        while index < s.endIndex, let digit = Int(String(s[index])) {
          number = (number*10)+digit
          index = s.index(after: index)
        }

        switch `operator` {
        case "+": previous = result; result += number
        case "-": previous = result; result -= number
        case "*": result -= previous; result *= number; result += previous
        case "/": result -= previous; result /= number; result += previous
        default: assertionFailure("unexpected operator '\(`operator`)'")
        }
      } else if operators.contains(character) {
        `operator` = character
        index = s.index(after: index)
      } else {
        index = s.index(after: index)
      }
    }

    return result
  }
}
