import CoreFoundation

/// https://leetcode.com/problems/maximum-subsequence-score/
struct MaximumSubsequenceScore {
  func maxScore(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
    let pairs = zip(nums1, nums2)
      .sorted { $0.1 > $1.1 }

    let heap = Heap()
    var sum = 0
    var maxScore = 0
    for (num1, num2) in pairs {
      sum += num1
      heap.push(num1)

      if heap.count > k {
        sum -= heap.pop()
      }
      if heap.count == k {
        maxScore = max(maxScore, sum*num2)
      }
    }

    return maxScore
  }

  class Heap {
    let heap: CFBinaryHeap?

    init() {
      var callBacks = CFBinaryHeapCallBacks()
      callBacks.compare = { lhsPointer, rhsPointer, _ in
        let lhs = lhsPointer!.load(as: Int.self)
        let rhs = rhsPointer!.load(as: Int.self)
        return lhs < rhs ? .compareLessThan : .compareGreaterThan
      }
      heap = CFBinaryHeapCreate(nil, 0, &callBacks, nil)
    }

    func push(_ element: Int) {
      let pointer = UnsafeMutablePointer<Int>.allocate(capacity: 1)
      pointer.initialize(to: element)
      CFBinaryHeapAddValue(heap, pointer)
    }

    func pop() -> Int {
      let element = CFBinaryHeapGetMinimum(heap).load(as: Int.self)
      CFBinaryHeapRemoveMinimumValue(heap)
      return element
    }

    var count: Int {
      CFBinaryHeapGetCount(heap)
    }
  }
}
