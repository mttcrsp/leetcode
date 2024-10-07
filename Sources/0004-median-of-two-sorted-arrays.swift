/// https://leetcode.com/problems/median-of-two-sorted-arrays/
struct MedianOfTwoSortedArrays {
  func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    if nums1.count > nums2.count {
      return findMedianSortedArrays(nums2, nums1)
    }

    let n = nums1.count
    let m = nums2.count
    var lhs = 0
    var rhs = n
    while true {
      let countFrom1 = (lhs+rhs)/2
      let countFrom2 = (n+m+1)/2-countFrom1

      let left1 = countFrom1 == 0 ? Int.min : nums1[countFrom1-1]
      let left2 = countFrom2 == 0 ? Int.min : nums2[countFrom2-1]
      let right1 = countFrom1 == n ? Int.max : nums1[countFrom1]
      let right2 = countFrom2 == m ? Int.max : nums2[countFrom2]

      if left1 <= right2, left2 <= right1 {
        if (n+m)%2 == 0 {
          return (Double(max(left1, left2))+Double(min(right1, right2)))/2
        } else {
          return Double(max(left1, left2))
        }
      } else if left1 > right2 {
        rhs = countFrom1-1
      } else {
        lhs = countFrom1+1
      }
    }
  }
}
