/// https://leetcode.com/problems/kth-missing-positive-number/
struct KthMissingPositiveNumber {
  func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    if k < arr[0] {
      return k
    }

    var counter = arr[0]-1
    for i in arr.indices.dropFirst() {
      let lhs = arr[i-1]
      let rhs = arr[i]
      counter += rhs-lhs-1
      if counter >= k {
        return rhs-1-(counter-k)
      }
    }

    return arr[arr.count-1]+(k-counter)
  }
}
