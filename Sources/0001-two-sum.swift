/// https://leetcode.com/problems/two-sum/
struct TwoSum {
  func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var complements: [Int: Int] = [:]
    for (i, number) in numbers.enumerated() {
      if let j = complements[number] {
        return [j, i]
      } else {
        complements[target-number] = i
      }
    }
    preconditionFailure("No solution found for numbers '\(numbers)' and target '\(target)'")
  }
}
