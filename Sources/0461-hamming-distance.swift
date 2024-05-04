/// https://leetcode.com/problems/hamming-distance/
struct HammingDistance {
  func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var distance = 0
    var x = x
    var y = y
    while x > 0 || y > 0 {
      if x & 1 != y & 1 {
        distance += 1
      }
      x = x >> 1
      y = y >> 1
    }
    return distance
  }
}
