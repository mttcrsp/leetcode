/// https://leetcode.com/problems/all-elements-in-two-binary-search-trees/
struct AllElementsInTwoBinarySearchTrees {
  func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
    var halfSorted: [Int] = []

    func visit(_ node: TreeNode?) {
      if let node {
        visit(node.left)
        halfSorted.append(node.val)
        visit(node.right)
      }
    }

    visit(root1)
    visit(root2)

    // This solution runs in O(n log n) due to this sorting. This can be easily
    // made linear either by applying radix sort or by using the merge algorithm
    // from merge sort. Both procedures run in O(n) and will reduce the time
    // complexity of the overall algorigthm to O(n).
    return halfSorted.sorted()
  }
}
