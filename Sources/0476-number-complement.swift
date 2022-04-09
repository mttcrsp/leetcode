/// https://leetcode.com/problems/number-complement/
struct NumberComplement {
  func findComplement(_ num: Int) -> Int {
    if num == 0 { return 1 }

    var mutableNum = 0
    var mask = 1
    while mask < num {
      if num & mask == 0 {
        mutableNum += mask
      }
      mask *= 2
    }
    return mutableNum
  }
}
