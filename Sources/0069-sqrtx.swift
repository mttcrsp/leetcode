/// https://leetcode.com/problems/sqrtx/
struct Sqrtx {
  func mySqrt(_ x: Int) -> Int {
    func predicate(_ value: Int) -> Bool {
      (value*value) <= x
    }

    var lhs = 0
    var rhs = x
    while lhs < rhs {
      let mid = lhs+((rhs-lhs)/2)
      if predicate(mid) {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }

    return predicate(lhs) ? lhs : lhs-1
  }
}
