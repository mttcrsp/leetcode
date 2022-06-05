/// https://leetcode.com/problems/clone-graph/
struct CloneGraph {
  func cloneGraph(_ node: Node?) -> Node? {
    guard let node = node else { return nil }

    var dictionary: [Int: Node] = [:]
    var stack: [Node] = [node]
    while !stack.isEmpty {
      let node = stack.removeLast()

      let copy = dictionary[node.val] ?? Node(node.val)
      dictionary[node.val] = copy

      for neighbour in node.neighbors {
        guard let neighbour = neighbour else { continue }

        if dictionary[neighbour.val] == nil {
          stack.append(neighbour)
        }

        let neighbourCopy = dictionary[neighbour.val] ?? Node(neighbour.val)
        dictionary[neighbour.val] = neighbourCopy
        copy.neighbors.append(neighbourCopy)
      }
    }

    return dictionary[node.val]
  }

  final class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
      self.val = val
      neighbors = []
    }
  }
}
