struct ImplementStrstr {
  /// Knuth-Morris-Pratt is the optimal solution to this problem
  func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
      return 0
    }

    if needle.count > haystack.count {
      return -1
    }

    let startIndex = haystack.startIndex
    let endIndex = haystack.index(haystack.startIndex, offsetBy: haystack.count - needle.count)
    for index in haystack[startIndex ... endIndex].indices {
      if haystack[index...].hasPrefix(needle) {
        return haystack.distance(from: haystack.startIndex, to: index)
      }
    }

    return -1
  }
}
