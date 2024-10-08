/// https://leetcode.com/problems/house-robber-ii/
struct HouseRobberIi {
  func rob(_ nums: [Int]) -> Int {
    switch nums.count {
    case 0: 0
    case 1: nums[0]
    case _: max(rob(nums[0 ..< nums.count-1]), rob(nums[1 ..< nums.count]))
    }
  }

  private func rob(_ nums: ArraySlice<Int>) -> Int {
    var sumsMinus2 = 0
    var sumsMinus1 = 0

    for num in nums {
      let take = sumsMinus2+num
      let skip = sumsMinus1
      let best = max(take, skip)
      sumsMinus2 = sumsMinus1
      sumsMinus1 = best
    }

    return sumsMinus1
  }
}
