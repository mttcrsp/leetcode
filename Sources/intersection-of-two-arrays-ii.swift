struct IntersectionOfTwoArraysIi {
  func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var occurrences1: [Int: Int] = [:]
    for number in nums1 {
      occurrences1[number, default: 0] += 1
    }

    var occurrences2: [Int: Int] = [:]
    for number in nums2 {
      occurrences2[number, default: 0] += 1
    }

    var result: [Int] = []
    for (number, count1) in occurrences1 {
      if let count2 = occurrences2[number] {
        result.append(contentsOf: [Int](repeating: number, count: min(count1, count2)))
      }
    }
    return result
  }
}
