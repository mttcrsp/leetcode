/// https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/
struct BinarySearchTreeToGreaterSumTree {
  func bstToGst(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }

    var list: [TreeNode] = []
    visit(root, addingTo: &list)

    for i in list.indices.dropFirst() {
      list[i].val += list[i - 1].val
    }

    return root
  }

  private func visit(_ node: TreeNode, addingTo list: inout [TreeNode]) {
    if let node = node.right { visit(node, addingTo: &list) }
    list.append(node)
    if let node = node.left { visit(node, addingTo: &list) }
  }
}
