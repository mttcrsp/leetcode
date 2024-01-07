/// https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/
struct MinimumFlipsToMakeAOrBEqualToC {
  func minFlips(_ a: Int, _ b: Int, _ c: Int) -> Int {
    var bitmask = 1
    var flips = 0
    while bitmask <= a || bitmask <= b || bitmask <= c {
      defer { bitmask = bitmask << 1 }

      let bitA = bitmask & a
      let bitB = bitmask & b
      let bitC = bitmask & c

      let actual = bitA | bitB > 0
      let expect = bitC > 0
      switch (actual, expect) {
      case (true, true), (false, false): continue
      case (true, false): flips += (bitA & bitB != 0) ? 2 : 1
      case (false, true): flips += 1
      }
    }

    return flips
  }
}
