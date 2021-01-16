extension Solution {
  func sortColors(_ numbers: inout [Int]) {
    var counts = [0, 0, 0]
    for number in numbers {
      counts[number] += 1
    }

    for i in numbers.indices {
      if counts[0] > 0 {
        numbers[i] = 0
        counts[0] -= 1
      } else if counts[1] > 0 {
        numbers[i] = 1
        counts[1] -= 1
      } else {
        numbers[i] = 2
        counts[2] -= 1
      }
    }
  }
}
