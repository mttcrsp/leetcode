/// https://leetcode.com/problems/serialize-and-deserialize-binary-tree/
class SerializeAndDeserializeBinaryTreeCodec {
  func serialize(_ root: TreeNode?) -> String {
    var preorder: [Int] = []
    var inorder: [Int] = []
    var stack: [TreeNode] = []
    var curr = root
    while curr != nil || !stack.isEmpty {
      if let node = curr {
        preorder.append(node.val)
        stack.append(node)
        curr = node.left
      } else {
        let node = stack.removeLast()
        inorder.append(node.val)
        curr = node.right
      }
    }

    let serializedPreorder = preorder.map(\.description).joined(separator: ",")
    let serializedInorder = inorder.map(\.description).joined(separator: ",")
    return [serializedPreorder, serializedInorder].joined(separator: separator)
  }

  private let separator = "|"

  func deserialize(_ data: String) -> TreeNode? {
    let components = data.components(separatedBy: separator)
    guard
      components.count == 2,
      let serializedPreorder = components.first,
      let serializedInorder = components.last
    else { preconditionFailure("malformed representation") }

    let preorder = serializedPreorder.components(separatedBy: ",").compactMap(Int.init)
    let inorder = serializedInorder.components(separatedBy: ",").compactMap(Int.init)

    func visit(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
      guard let val = preorder.first, let mid = inorder.firstIndex(of: val) else { return nil }
      let node = TreeNode(val)
      node.left = visit(Array(preorder[1 ..< mid+1]), Array(inorder[..<mid]))
      node.right = visit(Array(preorder[(mid+1)...]), Array(inorder[(mid+1)...]))
      return node
    }

    return visit(preorder, inorder)
  }
}
