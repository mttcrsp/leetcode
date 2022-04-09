/// https://leetcode.com/problems/missing-number/
struct MissingNumber {
  func missingNumber(_ numbers: [Int]) -> Int {
    var actualSum = 0
    for number in numbers {
      actualSum += number
    }

    let n = numbers.count
    let expectedSum = ((n * (n + 1)) / 2)

    return expectedSum - actualSum
  }
}
