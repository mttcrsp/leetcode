extension Solution {
  func circularArrayLoop(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else {
      return false
    }

    var nodes: [Node] = []
    for (index, value) in nums.enumerated() {
      nodes.append(.init(value: value, index: index))
    }

    var unvisited: Set<Node> = []
    var successors: [Node: Node] = [:]
    for node in nodes {
      let pred = node
      let succ = nodes[nums.circularIndex(after: node.index)]
      successors[pred] = succ

      if pred != succ {
        unvisited.insert(pred)
      }
    }

    while !unvisited.isEmpty {
      let node = unvisited.removeFirst()
      var next = successors[node]!
      var visit = Set([node])

      while true {
        if visit.contains(next) {
          return true
        } else if !unvisited.contains(next) {
          break
        } else if (node.value > 0) != (next.value > 0) {
          break
        } else {
          visit.insert(next)
          unvisited.remove(next)
          next = successors[next]!
        }
      }
    }

    return false
  }
}

private struct Node: Hashable {
  let index: Int
  let value: Int

  init(value: Int, index: Int) {
    self.index = index
    self.value = value
  }
}

private extension Array where Element == Int {
  func circularIndex(after index: Int) -> Int {
    let next = index + self[index]

    if next >= count {
      return next % count
    } else if next < 0 {
      return count - (abs(next) % count)
    } else {
      return next
    }
  }
}
