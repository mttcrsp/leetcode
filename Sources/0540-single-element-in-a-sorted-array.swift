/// https://leetcode.com/problems/single-element-in-a-sorted-array/
struct SingleElementInASortedArray {
  func singleNonDuplicate(_ numbers: [Int]) -> Int {
    numbers.reduce(0, ^)
  }
}
