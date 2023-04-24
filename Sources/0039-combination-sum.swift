/// https://leetcode.com/problems/combination-sum/
struct CombinationSum {
  func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result: [[Int]] = []
   
    func visit(offset: Int = 0, combination: [Int] = [], total: Int = 0) {
      if total == target {
        result.append(combination)
      } else if offset < candidates.count, total < target {
        let newValue = candidates[offset]
        visit(offset: offset, combination: combination + [newValue], total: total + newValue)
        visit(offset: offset + 1, combination: combination, total: total)
      }
    }
    
    visit()
    
    return result
  }
}
