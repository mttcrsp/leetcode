/// https://leetcode.com/problems/make-array-empty/
struct MakeArrayEmpty {
  func countOperationsToEmptyArray(_ nums: [Int]) -> Int {
    var indices: [Int: Int] = [:]
    for (index, element) in nums.enumerated() {
      indices[element] = index
    }

    let sortedNums = nums.sorted()
    var operations = sortedNums.count
    for i in sortedNums.indices.dropFirst() {
      if indices[sortedNums[i]]! < indices[sortedNums[i-1]]! {
        operations += sortedNums.count-i
      }
    }

    return operations
  }
}
