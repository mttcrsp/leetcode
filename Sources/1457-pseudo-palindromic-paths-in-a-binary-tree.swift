/// https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/
struct PseudoPalindromicPathsInABinaryTree {
  func pseudoPalindromicPaths(_ root: TreeNode?, _ frequencies: [Int: Int] = [:]) -> Int {
    guard let root else { return 0 }

    var frequencies = frequencies
    frequencies[root.val, default: 0] += 1

    switch (root.left, root.right) {
    case let (lhs?, rhs?):
      return pseudoPalindromicPaths(lhs, frequencies)
        + pseudoPalindromicPaths(rhs, frequencies)
    case (let child?, nil), (nil, let child?):
      return pseudoPalindromicPaths(child, frequencies)
    case (nil, nil):
      var oddFound = false
      for (_, count) in frequencies where count%2 == 1 {
        if oddFound {
          return 0
        } else {
          oddFound = true
        }
      }
      return 1
    }
  }
}
