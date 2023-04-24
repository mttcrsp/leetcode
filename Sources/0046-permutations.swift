/// https://leetcode.com/problems/permutations/
struct Permutations {
  func permute(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    
    func visit(permutation: [Int] = [], unused: Set<Int> = Set(nums)) {
      if unused.isEmpty {
        result.append(permutation)
      } else {
        for element in unused {
          let newUnused = unused.subtracting([element])
          let newPermutation = permutation + [element]
          visit(permutation: newPermutation, unused: newUnused)
        }
      }
    }
    visit()
    
    return result
  }
}
