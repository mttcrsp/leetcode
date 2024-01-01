/// https://leetcode.com/problems/predict-the-winner/
struct PredictTheWinner {
  func predictTheWinner(_ nums: [Int]) -> Bool {
    guard nums.count%2 != 0 else { return true }

    var differences = [Int](repeating: 0, count: nums.count)
    for i in nums.indices.reversed() {
      for j in i ..< nums.endIndex {
        if i == j {
          differences[i] = nums[i]
        } else {
          differences[j] = max(nums[i]-differences[j], nums[j]-differences[j-1])
        }
      }
    }

    return differences[differences.count-1] >= 0
  }
}
