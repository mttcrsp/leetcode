/// https://leetcode.com/problems/combination-sum-iii/
struct CombinationSumIii {
  func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
    var combinations: [[Int]] = []

    func visit(_ nums: [Int].SubSequence, _ k: Int, _ n: Int, _ path: [Int] = []) {
      if k < 0 || n < 0 {
        return
      } else if k == 0, n == 0 {
        combinations.append(path)
      } else {
        for i in nums.indices {
          visit(nums[(i+1)...], k-1, n-nums[i], path+[nums[i]])
        }
      }
    }
    visit(Array(1 ... 9)[0 ..< 9], k, n)

    return combinations
  }
}
