/// https://leetcode.com/problems/merge-sorted-array/
struct MergeSortedArray {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var index1 = m-1
    var index2 = n-1
    var insertionIndex: Int { index1+index2+1 }
    while index1 >= 0, index2 >= 0 {
      if nums1[index1] > nums2[index2] {
        nums1[insertionIndex] = nums1[index1]
        index1 -= 1
      } else {
        nums1[insertionIndex] = nums2[index2]
        index2 -= 1
      }
    }

    while index2 >= 0 {
      nums1[insertionIndex] = nums2[index2]
      index2 -= 1
    }
  }
}
