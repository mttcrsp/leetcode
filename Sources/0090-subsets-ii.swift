/// https://leetcode.com/problems/subsets-ii/
struct SubsetsIi {
  func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
    var matchedOccurrences: Set<[Int: Int]> = []
    var stack: [(offset: Int, subset: [Int], occurrences: [Int: Int])] = [(0, [], [:])]
    var result: [[Int]] = [[]]

    while let (offset, subset, occurrences) = stack.popLast() {
      guard offset < nums.count else { continue }

      let num = nums[offset]
      var newOccurrences = occurrences
      newOccurrences[num, default: 0] += 1

      let newSubset = subset+[num]
      stack.append((offset+1, subset, occurrences))

      if !matchedOccurrences.contains(newOccurrences) {
        matchedOccurrences.insert(newOccurrences)
        result.append(newSubset)
        stack.append((offset+1, newSubset, newOccurrences))
      }
    }

    return result
  }
}
