/// https://leetcode.com/problems/relative-sort-array/
struct RelativeSortArray {
  func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var counts = [Int](repeating: 0, count: 1001)
    for number in arr1 {
      counts[number] += 1
    }

    var arr1 = arr1
    var index = 0
    for number in arr2 {
      defer { counts[number] = 0 }
      for _ in 0 ..< counts[number] {
        arr1[index] = number
        index += 1
      }
    }

    for (number, count) in counts.enumerated() {
      for _ in 0 ..< count {
        arr1[index] = number
        index += 1
      }
    }

    return arr1
  }
}
