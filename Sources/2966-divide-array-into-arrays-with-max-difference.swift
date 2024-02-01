/// https://leetcode.com/problems/divide-array-into-arrays-with-max-difference/
struct DivideArrayIntoArraysWithMaxDifference {
  func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
    let nums = nums.sorted()

    var result: [[Int]] = []
    for num in nums {
      guard let group = result.last, group.count < 3
      else { result.append([num]); continue }

      guard group.allSatisfy({ other in num-other <= k })
      else { return [] }

      result[result.count-1].append(num)
    }

    if let group = result.last, group.count < 3 {
      return []
    } else {
      return result
    }
  }
}
