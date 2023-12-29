/// https://leetcode.com/problems/sort-colors/
struct SortColors {
  func sortColors(_ numbers: inout [Int]) {
    var counts = [0, 0, 0]
    for (i, number) in numbers.enumerated() {
      if number < 1, counts[1] > 0 {
        let firstIndexOf1 = counts[0]
        numbers.swapAt(i, firstIndexOf1)
      }

      if number < 2, counts[2] > 0 {
        let firstIndexOf2 = counts[0]+counts[1]
        numbers.swapAt(i, firstIndexOf2)
      }

      counts[number] += 1
    }
  }
}
