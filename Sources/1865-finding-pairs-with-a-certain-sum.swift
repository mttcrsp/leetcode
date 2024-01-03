class FindSumPairs {
  let nums1: [Int]
  var nums2: [Int]
  var frequencies: [Int: Int]

  init(_ nums1: [Int], _ nums2: [Int]) {
    var frequencies: [Int: Int] = [:]
    for num in nums2 {
      frequencies[num, default: 0] += 1
    }

    self.nums1 = nums1
    self.nums2 = nums2
    self.frequencies = frequencies
  }

  func add(_ index: Int, _ val: Int) {
    let oldValue = nums2[index]
    let newValue = oldValue+val
    nums2[index] = newValue
    frequencies[oldValue, default: 0] -= 1
    frequencies[newValue, default: 0] += 1
  }

  func count(_ tot: Int) -> Int {
    var count = 0
    for num1 in nums1 {
      count += frequencies[tot-num1, default: 0]
    }
    return count
  }
}
