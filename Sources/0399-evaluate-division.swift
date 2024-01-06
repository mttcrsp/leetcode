/// https://leetcode.com/problems/evaluate-division/
struct EvaluateDivision {
  func calcEquation(_ equations: [[String]], _ _values: [Double], _ queries: [[String]]) -> [Double] {
    var values: [[String]: Double] = [:]
    var connections: [String: Set<String>] = [:]
    for (equation, value) in zip(equations, _values) {
      values[equation] = value
      connections[equation[0], default: []].insert(equation[1])
      connections[equation[1], default: []].insert(equation[0])
    }

    func identityAnswer(to query: [String]) -> Double? {
      if query[0] == query[1] {
        connections[query[0]] != nil ? 1 : -1
      } else {
        nil
      }
    }

    func directAnswer(to query: [String]) -> Double? {
      if let value = values[[query[0], query[1]]] {
        value
      } else if let value = values[[query[1], query[0]]] {
        1/value
      } else {
        nil
      }
    }

    typealias Fact = (equation: [String], value: Double)

    func transitiveAnswer(to query: [String]) -> Double? {
      transitiveAnswer(from: query[0], to: query[1]) ??
        transitiveAnswer(from: query[1], to: query[0])
    }

    func transitiveAnswer(from source: String, to destination: String) -> Double? {
      var visited: Set<String> = []
      var queue: [(String, Fact?)] = [(source, nil)]
      while !queue.isEmpty {
        let (operand, fact) = queue.removeFirst()

        guard !visited.contains(operand) else { continue }
        visited.insert(operand)

        guard operand != destination else { return fact?.value }
        for next in connections[operand, default: []] {
          let equation1 = [operand, next]
          let equation2 = [next, operand]
          var nextFact: Fact?
          if let value = values[equation1] {
            nextFact = (equation1, value)
          } else if let value = values[equation2] {
            nextFact = (equation2, value)
          }

          if let nextFact, let fact {
            queue.append((next, transitiveFact(from: fact, to: nextFact)))
          } else {
            queue.append((next, nextFact))
          }
        }
      }

      return nil
    }

    func transitiveFact(from lhs: Fact, to rhs: Fact) -> Fact {
      if lhs.equation[1] == rhs.equation[0] {
        ([lhs.equation[0], rhs.equation[1]], lhs.value*rhs.value)
      } else if rhs.equation[1] == lhs.equation[0] {
        ([lhs.equation[1], rhs.equation[0]], 1/(lhs.value*rhs.value))
      } else if lhs.equation[0] == rhs.equation[0] {
        ([lhs.equation[1], rhs.equation[1]], rhs.value/lhs.value)
      } else {
        ([lhs.equation[0], rhs.equation[0]], 1/(rhs.value/lhs.value))
      }
    }

    return queries.map { query in
      identityAnswer(to: query)
        ?? directAnswer(to: query)
        ?? transitiveAnswer(to: query)
        ?? -1
    }
  }
}
