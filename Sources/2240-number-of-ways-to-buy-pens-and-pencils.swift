/// https://leetcode.com/problems/number-of-ways-to-buy-pens-and-pencils/
struct NumberOfWaysToBuyPensAndPencils {
  func waysToBuyPensPencils(_ total: Int, _ cost1: Int, _ cost2: Int) -> Int {
    let maxCost = max(cost1, cost2)
    let minCost = min(cost1, cost2)
    var count = 0
    for maxItemCount in 0 ... total/maxCost {
      let minItemCount = (total-(maxCost*maxItemCount))/minCost
      count += minItemCount+1
    }
    return count
  }
}
