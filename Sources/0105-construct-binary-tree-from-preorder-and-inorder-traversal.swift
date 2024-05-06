/// https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
struct ConstructBinaryTreeFromPreorderAndInorderTraversal {
  func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    guard let val = preorder.first, let mid = inorder.firstIndex(of: val) else { return nil }
    let node = TreeNode(val)
    node.left = buildTree(Array(preorder[1 ..< mid+1]), Array(inorder[..<mid]))
    node.right = buildTree(Array(preorder[(mid+1)...]), Array(inorder[(mid+1)...]))
    return node
  }
}
