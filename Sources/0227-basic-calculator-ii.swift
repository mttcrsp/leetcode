/// https://leetcode.com/problems/basic-calculator-ii/
struct BasicCalculatorIi {
  func calculate(_ s: String) -> Int {
    var tokens: [Token] = []
    for character in s {
      switch character {
      case " ": continue
      case "+": tokens.append(.op(character, +))
      case "-": tokens.append(.op(character, -))
      case "*": tokens.append(.op(character, *))
      case "/": tokens.append(.op(character, /))
      default:
        guard let value = Int(String(character)) else { continue }
        if case let .number(previous) = tokens.last {
          tokens[tokens.count-1] = .number((previous*10)+value)
        } else {
          tokens.append(.number(value))
        }
      }
    }

    let nodes = tokens.map(Node.init)
    for i in nodes.indices.dropLast() {
      nodes[i].next = nodes[i+1]
    }

    for operationIDs in [["*", "/"], ["+", "-"]] as [[Character]] {
      var node = nodes.first
      while let current = node {
        if
          case let .number(value1) = current.val,
          case let .number(value2) = current.next?.next?.val,
          case let .op(id, fn) = current.next?.val,
          operationIDs.contains(id)
        {
          current.val = .number(fn(value1, value2))
          current.next = current.next?.next?.next
        } else {
          node = current.next
        }
      }
    }

    if case let .number(result) = nodes.first?.val {
      return result
    } else {
      return 0
    }
  }

  enum Token {
    case op(Character, (Int, Int) -> Int)
    case number(Int)
  }

  class Node {
    var val: Token
    var next: Node?
    init(_ val: Token) {
      self.val = val
    }
  }
}
