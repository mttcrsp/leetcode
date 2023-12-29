/// https://leetcode.com/problems/clone-graph/
struct CloneGraph {
  func cloneGraph(_ head: Node?) -> Node? {
    guard let head else { return nil }

    var nodes: [Int: Node] = [:]
    var frontier: [Node] = [head]
    while let node = frontier.popLast() {
      nodes[node.val] = nodes[node.val] ?? Node(node.val)
      for next in node.neighbors.compactMap({ $0 }) {
        if nodes[next.val] == nil {
          frontier.append(next)
        }
        nodes[next.val] = nodes[next.val] ?? Node(next.val)
        nodes[node.val]!.neighbors.append(nodes[next.val]!)
      }
    }

    return nodes[head.val]
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
