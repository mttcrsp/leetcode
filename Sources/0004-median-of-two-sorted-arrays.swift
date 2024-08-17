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
      let partition1 = (lhs+rhs)/2
      let partition2 = (n+m+1)/2-partition1

      let maxLeft1 = partition1 == 0 ? Int.min : nums1[partition1-1]
      let maxLeft2 = partition2 == 0 ? Int.min : nums2[partition2-1]
      let minRight1 = partition1 == n ? Int.max : nums1[partition1]
      let minRight2 = partition2 == m ? Int.max : nums2[partition2]

      if maxLeft1 <= minRight2, maxLeft2 <= minRight1 {
        if (n+m)%2 == 0 {
          return (Double(max(maxLeft1, maxLeft2))+Double(min(minRight1, minRight2)))/2
        } else {
          return Double(max(maxLeft1, maxLeft2))
        }
      } else if maxLeft1 > minRight2 {
        rhs = partition1-1
      } else {
        lhs = partition1+1
      }
    }
  }
}
