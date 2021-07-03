struct SingleElementInASortedArray {
  func singleNonDuplicate(_ numbers: [Int]) -> Int {
    numbers.reduce(0, ^)
  }
}
