/// https://leetcode.com/problems/kth-largest-element-in-an-array/
struct KthLargestElementInAnArray {
  func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    let minNum = -10000
    let maxNum = 10000
    var counts = [Int](repeating: 0, count: maxNum-minNum+1)
    for num in nums {
      counts[num-minNum] += 1
    }

    var k = k
    for index in counts.indices.reversed() {
      for _ in 0 ..< counts[index] {
        k -= 1
        if k == 0 {
          return index+minNum
        }
      }
    }
    preconditionFailure("Invalid input")
  }
}
