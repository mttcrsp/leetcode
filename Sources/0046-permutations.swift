/// https://leetcode.com/problems/permutations/
struct Permutations {
  func permute(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    var permutation: [Int] = []
    func backtrack() {
      if permutation.count == nums.count {
        return result.append(permutation)
      }

      for num in nums where !permutation.contains(num) {
        permutation.append(num)
        backtrack()
        permutation.removeLast()
      }
    }
    backtrack()

    return result
  }
}
