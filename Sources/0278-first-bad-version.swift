/// https://leetcode.com/problems/first-bad-version/
class FirstBadVersion {
  let firstBadVersion: Int

  init(firstBadVersion: Int) {
    self.firstBadVersion = firstBadVersion
  }

  func isBadVersion(_ version: Int) -> Bool {
    version == firstBadVersion
  }

  func firstBadVersion(_ n: Int) -> Int {
    var lhs = 1
    var rhs = n
    while lhs < rhs {
      let mid = lhs+((rhs-lhs)/2)
      if !isBadVersion(mid) {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }

    return lhs
  }
}
