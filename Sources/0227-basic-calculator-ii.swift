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
      if Int(String(character)) != nil {
        var number = 0
        while index < s.endIndex, let digit = Int(String(s[index])) {
          number = 10*number+digit
          index = s.index(after: index)
        }
        index = s.index(before: index)

        let tmp = result
        switch `operator` {
        case "+": result = result+number; previous = tmp
        case "-": result = result-number; previous = tmp
        case "*": result = previous+((result-previous)*number)
        case "/": result = previous+((result-previous)/number)
        default: assertionFailure("unexpected operator '\(`operator`)'")
        }
      } else if operators.contains(character) {
        `operator` = character
      }

      index = s.index(after: index)
    }

    return result
  }
}
