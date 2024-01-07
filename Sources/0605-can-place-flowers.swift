/// https://leetcode.com/problems/can-place-flowers/
struct CanPlaceFlowers {
  func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowebed = flowerbed
    var count = 0
    for (i, value) in flowebed.enumerated() {
      guard value == 0 else { continue }
      let lhs = i == 0 ? 0 : flowebed[i-1]
      let rhs = i == flowebed.count-1 ? 0 : flowebed[i+1]
      if lhs == 0, rhs == 0 {
        flowebed[i] = 1
        count += 1
      }
    }
    return n <= count
  }
}
