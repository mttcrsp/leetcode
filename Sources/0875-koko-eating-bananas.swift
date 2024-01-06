/// https://leetcode.com/problems/koko-eating-bananas/
struct KokoEatingBananas {
  func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
    let maxPile = Double(piles.max() ?? 0)
    let maxHoursPerPile = (Double(h)/Double(piles.count)).rounded(.down)
    var rhs = Int((maxPile/maxHoursPerPile).rounded(.down))
    var lhs = 1
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      let midHours = piles.reduce(0) { total, pile in
        var pileHours = pile/mid
        pileHours += pile%mid == 0 ? 0 : 1
        return total+pileHours
      }

      if midHours > h {
        lhs = mid+1
      } else {
        rhs = mid-1
      }
    }

    return lhs
  }
}
