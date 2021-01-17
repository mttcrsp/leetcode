struct TwoSumIiInputArrayIsSorted {
  func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var dictionary: [Int: Int] = [:]
    for (i, number) in numbers.enumerated() {
      if let j = dictionary[target - number] {
        return [j + 1, i + 1]
      }
      dictionary[number] = i
    }
    preconditionFailure("No solution found")
  }
}
