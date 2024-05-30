/// https://leetcode.com/problems/random-pick-index/
struct RandomPickIndex {
  private let indices: [Int: [Int]]

  init(_ nums: [Int]) {
    var indices: [Int: [Int]] = [:]
    for (index, num) in nums.enumerated() {
      indices[num, default: []].append(index)
    }
    self.indices = indices
  }

  func pick(_ target: Int) -> Int {
    if let index = indices[target]?.randomElement() {
      index
    } else {
      -1
    }
  }
}
