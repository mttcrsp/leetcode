struct MergeSortedArray {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var result: [Int] = []
    var i = 0
    var j = 0

    for _ in 1 ... n + m {
      if i == m {
        result.append(nums2[j]); j += 1
      } else if j == n {
        result.append(nums1[i]); i += 1
      } else if nums1[i] < nums2[j] {
        result.append(nums1[i]); i += 1
      } else if nums1[i] >= nums2[j] {
        result.append(nums2[j]); j += 1
      }
    }

    for (x, number) in result.enumerated() {
      nums1[x] = number
    }
  }
}
