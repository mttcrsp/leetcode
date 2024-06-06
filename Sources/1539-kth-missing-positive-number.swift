/// https://leetcode.com/problems/kth-missing-positive-number/
struct KthMissingPositiveNumber {
  func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var lhs = 0
    var rhs = arr.count-1
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if arr[mid]-mid-1 < k {
        lhs = mid+1
      } else {
        rhs = mid-1
      }
    }

    return lhs+k
  }
}
