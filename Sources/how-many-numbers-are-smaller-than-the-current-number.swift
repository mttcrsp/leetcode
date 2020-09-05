extension Solution {
  func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    let sortedNumbers = nums.sorted()

    var positions: [Int: Int] = [:]
    for (index, number) in sortedNumbers.enumerated().reversed() {
      positions[number] = index
    }

    var result: [Int] = []
    for number in nums {
      result.append(positions[number]!)
    }
    return result
  }
}
