struct TwoSumIiInputArrayIsSorted {
  func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var lhs = 0
    var rhs = numbers.count - 1

    while numbers[lhs] + numbers[rhs] != target {
      if numbers[lhs] + numbers[rhs] > target {
        rhs -= 1
      } else {
        lhs += 1
      }
    }

    return [lhs + 1, rhs + 1]
  }
}
