/// https://leetcode.com/problems/maximum-depth-of-binary-tree/
struct MaximumDepthOfBinaryTree {
  func maxDepth(_ root: TreeNode?) -> Int {
    var stack: [(TreeNode?, depth: Int)] = [(root, 1)]
    var maxDepth = 0

    while !stack.isEmpty {
      let (node, depth) = stack.removeFirst()
      if let node = node {
        maxDepth = max(maxDepth, depth)
        stack.append((node.left, depth + 1))
        stack.append((node.right, depth + 1))
      }
    }

    return maxDepth
  }
}
