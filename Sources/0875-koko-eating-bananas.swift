/// https://leetcode.com/problems/koko-eating-bananas/
struct KokoEatingBananas {
  func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
    guard let maxPile = piles.max() else { return -1 }

    var lhs = 1
    var rhs = maxPile
    while lhs < rhs {
      let mid = (lhs+rhs)/2

      var hours = 0
      for pile in piles {
        hours += Int((Double(pile)/Double(mid)).rounded(.up))
      }

      if hours > h {
        lhs = mid+1
      } else {
        rhs = mid
      }
    }

    return lhs
  }
}
