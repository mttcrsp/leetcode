/// https://leetcode.com/problems/find-the-power-of-k-size-subarrays-i/
struct FindThePowerOfKSizeSubarraysI {
  func resultsArray(_ nums: [Int], _ k: Int) -> [Int] {
    var current = (start: Int.min, count: 0)
    var result: [Int] = []
    for (index, num) in nums.enumerated() {
      if num == current.start+current.count {
        current.count += 1
      } else {
        current = (num, 1)
      }

      if index >= k-1 {
        result.append(current.count >= k ? num : -1)
      }
    }

    return result
  }
}
