/// https://leetcode.com/problems/kth-missing-positive-number/
struct KthMissingPositiveNumber {
  func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    func missingPositives(at index: Int) -> Int {
      arr[index]-index-1
    }

    var lhs = 0
    var rhs = arr.count-1
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if missingPositives(at: mid) >= k {
        rhs = mid
      } else {
        lhs = mid+1
      }
    }

    let missing = missingPositives(at: lhs)
    if missing > k {
      return arr[lhs]-(missing-k)-1
    } else if missing == k {
      return arr[lhs]-1
    } else {
      return arr[lhs]+(k-missing)
    }
  }
}
