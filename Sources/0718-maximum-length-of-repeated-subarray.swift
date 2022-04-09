/// https://leetcode.com/problems/maximum-length-of-repeated-subarray/
struct MaximumLengthOfRepeatedSubarray {
  func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
    let row = [Int](repeating: 0, count: nums1.count)
    var matrix = [[Int]](repeating: row, count: nums2.count)
    var max = 0

    for i in nums1.indices {
      for j in nums2.indices {
        if nums1[i] == nums2[j] {
          let newValue: Int
          if j > 0, i > 0 {
            newValue = matrix[j - 1][i - 1] + 1
          } else {
            newValue = 1
          }
          matrix[j][i] = newValue
          max = Swift.max(max, newValue)
        }
      }
    }

    return max
  }
}
