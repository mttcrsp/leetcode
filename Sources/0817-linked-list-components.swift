/// https://leetcode.com/problems/linked-list-components/
struct LinkedListComponents {
  func numComponents(_ head: ListNode?, _ nums: [Int]) -> Int {
    let nums = Set(nums)

    var components = 0
    var isMatching = false
    var node = head
    while let current = node {
      defer { node = node?.next }

      switch (nums.contains(current.val), isMatching) {
      case (true, false):
        isMatching.toggle(); components += 1
      case (false, true):
        isMatching.toggle()
      case (true, true), (false, false):
        continue
      }
    }

    return components
  }
}
