import Collections

/// https://leetcode.com/problems/kth-largest-element-in-an-array/
struct KthLargestElementInAnArray {
  func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var buffer: Heap<Int> = []
    for num in nums {
      buffer.insert(num)
      if buffer.count > k {
        buffer.removeMin()
      }
    }

    return buffer.removeMin()
  }
}
