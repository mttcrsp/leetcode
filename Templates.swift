import Collections
import HeapModule

struct Templates {
  func twoPointerOneInput(_ arr: [Int]) -> Int {
    var result = 0
    var lhs = 0
    var rhs = arr.count-1
    while lhs < rhs {
      // do some logic here with lhs and rhs
      if /* condition */ true {
        lhs += 1
      } else {
        rhs -= 1
      }
    }

    return result
  }

  func twoPointersTwoInputs(_ arr1: [Int], _ arr2: [Int]) -> Int {
    var result = 0
    var index1 = 0
    var index2 = 0
    while index1 < arr1.count, index2 < arr2.count {
      // do some logic here
      if /* condition */ true {
        index1 += 1
      } else {
        index2 += 1
      }
    }

    while index1 < arr1.count {
      // do logic
      index1 += 1
    }

    while index2 < arr2.count {
      // do logic
      index2 += 1
    }

    return result
  }

  func slidingWindow(_ arr: [Int]) -> Int {
    var result = 0
    var curr = 0
    var lhs = 0
    for rhs in arr.indices {
      // do logic here to add arr[rhs] to curr

      while /* window condition broken */ true {
        // remove arr[lhs] from curr
        lhs += 1
      }

      // update result
    }

    return result
  }

  func prefixSum(_ arr: [Int]) -> [Int] {
    var prefix = [arr[0]]
    for i in arr.indices.dropFirst() {
      prefix.append(prefix[-1]+arr[i])
    }

    return prefix
  }

  func fastAndSlowPointer(_ head: ListNode?) -> Int {
    var result = 0
    var slow = head
    var fast = head
    while fast != nil, fast?.next != nil {
      // do logic
      slow = slow?.next
      fast = fast?.next?.next
    }

    return result
  }

  func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var curr = head
    var prev = nil as ListNode?
    while curr != nil {
      let next = curr?.next
      curr?.next = prev
      prev = curr
      curr = next
    }

    return prev
  }

  func countSubarraysMatching(_ arr: [Int], _ k: Int) -> Int {
    var result = 0
    var curr = 0
    var counts: [Int: Int] = [:]
    counts[0] = 1
    for num in arr {
      // do logic to update curr
      result = counts[curr-k, default: 0]
      counts[curr, default: 0] += 1
    }

    return result
  }

  func monotonicIncreasingStack(_ arr: [Int]) -> Int {
    var result = 0
    var stack: [Int] = []
    for num in arr {
      // for monotonic decreasing, just flip the > to <
      while let last = stack.last, last > num {
        // do logic
        stack.removeLast()
      }
      stack.append(num)
    }

    return result
  }

  func binaryTreeDFSRecursive(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    var result = 0
    result += binaryTreeDFSRecursive(root.left)
    result += binaryTreeDFSRecursive(root.right)
    return result
  }

  func binaryTreeDFSIterative(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    var result = 0
    var stack = [root]
    while let node = stack.popLast() {
      // do logic
      for child in [node.left, node.right] {
        guard let child else { continue }
        stack.append(child)
      }
    }

    return result
  }

  func binaryTreeBFS(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    var result = 0
    var queue: Deque = [(root, 0)]
    while let (node, distance) = queue.popFirst() {
      // do logic for current distance

      for child in [node.left, node.right] {
        guard let child else { continue }
        queue.append((child, distance+1))
      }
    }

    return result
  }

  func topKElementsWithHeap(_ arr: [Int], _ k: Int) -> [Int] {
    var heap: Heap<Int> = []
    for num in arr {
      // do some logic to push onto heap according to problem's criteria
      heap.insert(num)
      if heap.count > k {
        _ = heap.removeMax()
      }
    }

    var result: [Int] = []
    while let num = heap.popMin() {
      result.append(num)
    }

    return result
  }

  func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var lhs = 0
    var rhs = arr.count-1
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if arr[mid] < target {
        lhs = mid+1
      } else if arr[mid] > target {
        rhs = mid-1
      } else {
        break // or return found element
      }
    }

    // lhs is the insertion point
    return lhs
  }

  func binarySearchDuplicateElementLeftMostInsertionPoint(_ arr: [Int], _ target: Int) -> Int {
    var lhs = 0
    var rhs = arr.count
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if arr[mid] < target {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }

    return lhs
  }

  func binarySearchDuplicateElementRightMostInsertionPoint(_ arr: [Int], _ target: Int) -> Int {
    var lhs = 0
    var rhs = arr.count
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if arr[mid] <= target {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }

    return lhs
  }

  func binarySearchGreedyMin(_ arr: [Int]) -> Int {
    func check(_ index: Int) -> Bool {
      // this function is implemented depending on the problem
      true
    }

    var lhs = 0
    var rhs = arr.count
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if check(mid) {
        rhs = mid-1
      } else {
        lhs = mid+1
      }
    }

    return lhs
  }

  func binarySearchGreedyMax(_ arr: [Int]) -> Int {
    func check(_ index: Int) -> Bool {
      // this function is implemented depending on the problem
      true
    }

    var lhs = 0
    var rhs = arr.count
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if check(mid) {
        lhs = mid+1
      } else {
        rhs = mid-1
      }
    }

    return rhs
  }

  func backtrack(_ curr: Int /* other arguments ... */ ) -> Int {
    guard false /* base case */ else { return 0 }

    var result = 0
    for _ in 0 ..< 100 /* iterate over input */ {
      // update current state
      result += backtrack(curr)
      // revert update to current state
    }

    return result
  }
}
