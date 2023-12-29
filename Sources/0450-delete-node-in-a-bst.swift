/// https://leetcode.com/problems/delete-node-in-a-bst/
struct DeleteNodeInABst {
  func deleteNode(_ node: TreeNode?, _ key: Int) -> TreeNode? {
    var sorted: [TreeNode] = []

    func visit(_ node: TreeNode?) {
      if let node {
        visit(node.left)
        sorted.append(node)
        visit(node.right)
      }
    }

    visit(node)

    sorted.removeAll { node in
      node.val == key
    }

    for i in sorted.indices.dropLast() {
      sorted.last?.left = nil
      sorted[i].right = sorted[i+1]
    }

    sorted.last?.left = nil
    sorted.last?.right = nil

    return sorted.first
  }
}
