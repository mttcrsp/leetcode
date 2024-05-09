import Collections

/// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree-iii/
struct LowestCommonAncestorOfABinaryTreeIii {
  func lowestCommonAncestor(_ p: Node?, _ q: Node?) -> Node? {
    var visited: Set<Int> = []
    var queue: Deque<Node> = [p!, q!]
    while let node = queue.popFirst() {
      guard !visited.contains(node.val)
      else { return node }
      visited.insert(node.val)
      if let parent = node.parent {
        queue.append(parent)
      }
    }

    preconditionFailure("p and q exist in the tree.")
  }

  class Node {
    var val: Int
    var left: Node?
    var right: Node?
    var parent: Node?
    init(_ val: Int) {
      self.val = val
      left = nil
      right = nil
      parent = nil
    }
  }
}
