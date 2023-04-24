/// https://leetcode.com/problems/permutations/
struct Permutations {
  func permute(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    var stack: [([Int], Set<Int>)] = [([], Set(nums))]
    
    while let (permutation, unused) = stack.popLast() {
      if unused.isEmpty {
        result.append(permutation)
      } else {
        for element in unused {
          let newUnused = unused.subtracting([element])
          let newPermutation = permutation + [element]
          stack.append((newPermutation, newUnused))
        }
      }
    }
    
    return result
  }
}
