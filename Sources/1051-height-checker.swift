/// https://leetcode.com/problems/height-checker/
struct HeightChecker {
  func heightChecker(_ heights: [Int]) -> Int {
    var counts = [Int](repeating: 0, count: 100)
    for height in heights {
      counts[height-1] += 1
    }

    var i = 0
    var expected = [Int](repeating: 0, count: heights.count)
    for (height, count) in counts.enumerated() {
      for _ in 0 ..< count {
        expected[i] = height+1
        i += 1
      }
    }

    var differences = 0
    for (lhs, rhs) in zip(heights, expected) where lhs != rhs {
      differences += 1
    }

    return differences
  }
}
