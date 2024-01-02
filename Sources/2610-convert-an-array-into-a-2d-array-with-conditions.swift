/// https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions/
struct ConvertAnArrayIntoA2DArrayWithConditions {
  func findMatrix(_ nums: [Int]) -> [[Int]] {
    var occurences: [Int: Int] = [:]
    for num in nums {
      occurences[num, default: 0] += 1
    }

    var result: [[Int]] = []
    for (num, count) in occurences {
      for i in 0 ..< count {
        if result.indices ~= i {
          result[i].append(num)
        } else {
          result.append([num])
        }
      }
    }
    return result
  }
}
