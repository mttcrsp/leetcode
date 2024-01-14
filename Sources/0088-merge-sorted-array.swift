/// https://leetcode.com/problems/merge-sorted-array/
struct MergeSortedArray {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m-1
    var j = n-1
    var k: Int { i+j+1 }
    while j >= 0 {
      if i >= 0, nums1[i] > nums2[j] {
        nums1[k] = nums1[i]; i -= 1
      } else {
        nums1[k] = nums2[j]; j -= 1
      }
    }
  }
}
