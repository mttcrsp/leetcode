/// https://leetcode.com/problems/random-pick-with-weight/
struct RandomPickWithWeight {
  let cumulativeSum: [Int]

  init(_ w: [Int]) {
    var sum = 0
    var cumulativeSum = w
    for (i, weight) in w.enumerated() {
      sum += weight
      cumulativeSum[i] = sum
    }
    self.cumulativeSum = cumulativeSum
  }

  func pickIndex() -> Int {
    let target = (1 ... cumulativeSum.last!).randomElement()!
    var lhs = 0
    var rhs = cumulativeSum.count-1
    while lhs < rhs {
      let mid = lhs+(rhs-lhs)/2
      if cumulativeSum[mid] < target {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }
    return lhs
  }
}
