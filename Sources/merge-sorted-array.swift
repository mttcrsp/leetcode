struct MergeSortedArray {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var merged: [Int] = []

    var i = 0
    var j = 0
    while i < m, j < n {
      if nums1[i] < nums2[j] {
        merged.append(nums1[i]); i += 1
      } else {
        merged.append(nums2[j]); j += 1
      }
    }

    if i < m { merged.append(contentsOf: nums1[i ..< m]) }
    if j < n { merged.append(contentsOf: nums2[j ..< n]) }

    for (offset, number) in merged.enumerated() {
      nums1[offset] = number
    }
  }
}
