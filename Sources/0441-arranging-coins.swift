/// https://leetcode.com/problems/arranging-coins/
struct ArrangingCoins {
  func arrangeCoins(_ n: Int) -> Int {
    let base = Double(2*n)+0.25
    let root = base.squareRoot()
    return Int((root-0.5).rounded(.down))
  }
}
