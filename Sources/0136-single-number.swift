/// https://leetcode.com/problems/single-number/
struct SingleNumber {
  func singleNumber(_ nums: [Int]) -> Int {
    nums.reduce(0, ^)
  }
}
