/// https://leetcode.com/problems/partition-array-according-to-given-pivot/
struct PartitionArrayAccordingToGivenPivot {
  func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
    var less: [Int] = []
    var more: [Int] = []
    var count = 0
    for num in nums {
      if num < pivot {
        less.append(num)
      } else if num > pivot {
        more.append(num)
      } else {
        count += 1
      }
    }

    let same = [Int](repeating: pivot, count: count)
    return less+same+more
  }
}
