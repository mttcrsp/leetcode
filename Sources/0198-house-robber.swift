/// https://leetcode.com/problems/house-robber/
struct HouseRobber {
  func rob(_ nums: [Int]) -> Int {
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
