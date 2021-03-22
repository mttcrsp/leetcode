@testable
import Leetcode

extension TreeNode {
  static func makeTree(with values: [Int?]) -> TreeNode? {
    let nodes = values.map { value -> TreeNode? in
      if let value = value {
        return TreeNode(value)
      } else {
        return nil
      }
    }

    for (i, node) in nodes.enumerated() {
      let lhsIndex = (i * 2) + 1
      let rhsIndex = (i * 2) + 2
      if nodes.indices.contains(lhsIndex) {
        node?.left = nodes[lhsIndex]
      }
      if nodes.indices.contains(rhsIndex) {
        node?.right = nodes[rhsIndex]
      }
    }

    if let node = nodes.first {
      return node
    } else {
      return nil
    }
  }
}
