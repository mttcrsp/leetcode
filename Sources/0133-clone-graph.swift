import Collections

/// https://leetcode.com/problems/clone-graph/
struct CloneGraph {
  func cloneGraph(_ node: Node?) -> Node? {
    guard let node else { return nil }

    var visited: [Int: Node] = [node.val: Node(node.val)]
    var queue: Deque<Node> = [node]
    while let node = queue.popFirst() {
      for neighbor in node.neighbors.compactMap({ $0 }) {
        if visited[neighbor.val] == nil {
          visited[neighbor.val] = Node(neighbor.val)
          queue.append(neighbor)
        }

        visited[node.val]?.neighbors
          .append(visited[neighbor.val])
      }
    }

    return visited[node.val]
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
