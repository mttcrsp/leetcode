/// https://leetcode.com/problems/clone-graph/
struct CloneGraph {
  func cloneGraph(_ node: Node?) -> Node? {
    guard let root = node else {
      return nil
    }

    var nodes: [Int: Node] = [:]
    var clones: [Int: Node] = [:]

    var toVisit = [root]
    while !toVisit.isEmpty {
      let node = toVisit.removeLast()
      nodes[node.val] = node
      clones[node.val] = Node(node.val)

      for node in node.neighbors {
        guard let node = node else { continue }
        if nodes[node.val] == nil {
          toVisit.append(node)
        }
      }
    }

    for (_, clone) in clones {
      for neighbor in nodes[clone.val]!.neighbors {
        if let clonedNeighbor = clones[neighbor!.val] {
          clone.neighbors.append(clonedNeighbor)
        }
      }
    }

    return clones[root.val]
  }

  class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
      self.val = val
      neighbors = []
    }
  }
}
