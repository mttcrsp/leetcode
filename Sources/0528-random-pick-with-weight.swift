/// https://leetcode.com/problems/random-pick-with-weight/
struct RandomPickWithWeight {
  var runningSums: [Int] = []

  init(_ w: [Int]) {
    var runningSum = 0
    for weight in w {
      runningSum += weight
      runningSums.append(runningSum)
    }
  }

  func pickIndex() -> Int {
    let target = (1 ... runningSums.last!).randomElement()!
    var lhs = 0
    var rhs = runningSums.count-1
    while lhs < rhs {
      let mid = lhs+(rhs-lhs)/2
      if runningSums[mid] < target {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }
    return lhs
  }
}
