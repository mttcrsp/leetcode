/// https://leetcode.com/problems/array-partition/
struct ArrayPartition {
  func arrayPairSum(_ nums: [Int]) -> Int {
    nums.sorted().enumerated().reduce(0) { total, item in
      item.offset%2 == 0 ? total+item.element : total
    }
  }
}
