import Collections

/// https://leetcode.com/problems/kth-largest-element-in-an-array/
struct KthLargestElementInAnArray {
  func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var heap: Heap<Int> = []
    for num in nums {
      if heap.count < k {
        heap.insert(num)
      } else {
        if let min = heap.min(), num > min {
          _ = heap.removeMin()
          heap.insert(num)
        }
      }
    }

    for _ in 1 ..< k {
      _ = heap.removeMax()
    }
    return heap.removeMax()
  }
}
