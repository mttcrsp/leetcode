/// https://leetcode.com/problems/combination-sum/
struct CombinationSum {
  func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result: [[Int]] = []
    var combination: [Int] = []
    var sum = 0
    func visit(_ index: Int) {
      if sum == target {
        result.append(combination)
      } else if index < candidates.count, sum < target {
        let newValue = candidates[index]
        combination.append(newValue)
        sum += newValue
        visit(index)
        sum -= newValue
        combination.removeLast()
        visit(index+1)
      }
    }

    visit(0)
    return result
  }
}
