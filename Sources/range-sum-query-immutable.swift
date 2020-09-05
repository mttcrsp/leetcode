class NumArray {
  private let numbers: [Int]

  init(_ nums: [Int]) {
    var numbers: [Int] = nums
    for i in numbers.indices.dropFirst() {
      numbers[i] += numbers[i - 1]
    }

    self.numbers = numbers
  }

  func sumRange(_ i: Int, _ j: Int) -> Int {
    if i == 0 {
      return numbers[j]
    } else {
      return numbers[j] - numbers[i - 1]
    }
  }
}
