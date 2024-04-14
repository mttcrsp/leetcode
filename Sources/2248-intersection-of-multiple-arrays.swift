/// https://leetcode.com/problems/intersection-of-multiple-arrays/
struct IntersectionOfMultipleArrays {
  func intersection(_ nums: [[Int]]) -> [Int] {
    var intersection = Set(nums[0])
    for array in nums.dropFirst() {
      intersection.formIntersection(array)
    }

    return intersection.sorted()
  }
}
