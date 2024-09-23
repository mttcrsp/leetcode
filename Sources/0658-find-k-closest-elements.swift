/// https://leetcode.com/problems/find-k-closest-elements/
struct FindKClosestElements {
  func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
    var lhs = 0
    var rhs = arr.count-k
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if x-arr[mid] > arr[mid+k]-x {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }

    return Array(arr[lhs ..< lhs+k])
  }
}
