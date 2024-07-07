/// https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/
struct RemoveDuplicatesFromSortedArrayIi {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 0
    var currentNum: Int?
    var currentCount = 0
    for num in nums {
      if num != currentNum {
        currentNum = num
        currentCount = 1
        nums[index] = num
        index += 1
      } else {
        currentCount += 1
        if currentCount <= 2 {
          nums[index] = num
          index += 1
        }
      }
    }
    return index
  }
}
