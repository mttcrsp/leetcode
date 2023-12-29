/// https://leetcode.com/problems/basic-calculator-ii/
struct BasicCalculatorIi {
  func calculate(_ s: String) -> Int {
    var nodes: [Node] = []
    for character in s {
      if let op = Operator(identifier: character) {
        nodes.append(Node(.op(op)))
      } else if let digit = Int(String(character)) {
        if case let .number(previous) = nodes.last?.symbol {
          nodes.removeLast()
          nodes.append(Node(.number((previous*10)+digit)))
        } else {
          nodes.append(Node(.number(digit)))
        }
      }
    }

    for i in nodes.indices {
      if i != nodes.startIndex {
        nodes[i].prev = nodes[i-1]
      }
      if i != nodes.endIndex-1 {
        nodes[i].next = nodes[i+1]
      }
    }

    let consume: (Node) -> Void = { node in
      if
        case let .op(op) = node.symbol,
        case let .number(lhs) = node.prev?.symbol,
        case let .number(rhs) = node.next?.symbol
      {
        node.prev?.symbol = .number(op.function(lhs, rhs))
        node.prev?.next = node.next?.next
        node.next?.next?.prev = node.prev
      }
    }

    for node in nodes {
      if case let .op(op) = node.symbol, op.identifier == "*" || op.identifier == "/" {
        consume(node)
      }
    }

    for node in nodes {
      if case let .op(op) = node.symbol, op.identifier == "+" || op.identifier == "-" {
        consume(node)
      }
    }

    if case let .number(number) = nodes.first?.symbol {
      return number
    } else {
      return 0
    }
  }

  private class Node {
    var symbol: Symbol
    var prev: Node?
    var next: Node?

    init(_ symbol: Symbol) {
      self.symbol = symbol
    }
  }

  private enum Symbol {
    case number(Int)
    case op(Operator)
  }

  private struct Operator {
    let identifier: Character
    let function: (Int, Int) -> Int

    init?(identifier: Character) {
      self.identifier = identifier
      switch identifier {
      case "+":
        function = { $0+$1 }
      case "-":
        function = { $0-$1 }
      case "*":
        function = { $0*$1 }
      case "/":
        function = { $0/$1 }
      default:
        return nil
      }
    }
  }
}
