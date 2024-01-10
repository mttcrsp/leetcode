import Collections

/// https://leetcode.com/problems/amount-of-time-for-binary-tree-to-be-infected/
struct AmountOfTimeForBinaryTreeToBeInfected {
  func amountOfTime(_ root: TreeNode?, _ start: Int) -> Int {
    var adjacencyList: [Int: Set<Int>] = [:]
    var stack = [(root?.left, root), (root?.right, root)]
    while let (node, parent) = stack.popLast() {
      guard let node, let parent else { continue }
      adjacencyList[node.val, default: []].insert(parent.val)
      adjacencyList[parent.val, default: []].insert(node.val)
      stack.append((node.left, node))
      stack.append((node.right, node))
    }

    var lastMinute = 0
    var visited: Set<Int> = []
    var queue: Deque = [(start, 0)]
    while let (val, minute) = queue.popFirst() {
      guard !visited.contains(val) else { continue }
      visited.insert(val)

      lastMinute = max(lastMinute, minute)
      for neighbor in adjacencyList[val, default: []] {
        queue.append((neighbor, minute+1))
      }
    }

    return lastMinute
  }
}
