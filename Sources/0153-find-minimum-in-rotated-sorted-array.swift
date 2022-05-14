/// https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
struct FindMinimumInRotatedSortedArray {
  func findMin(_ numbers: [Int]) -> Int {
    var lhs = 0
    var rhs = numbers.count - 1

    if numbers[lhs] <= numbers[rhs] {
      return numbers[lhs]
    }

    while lhs < rhs - 1 {
      let mid = (lhs + rhs + 1) / 2
      if numbers[mid] < numbers[lhs] {
        rhs = mid
      } else {
        lhs = mid
      }
    }

    return min(numbers[lhs], numbers[rhs])
  }
}
