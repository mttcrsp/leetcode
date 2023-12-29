/// https://leetcode.com/problems/number-of-segments-in-a-string/
struct NumberOfSegmentsInAString {
  func countSegments(_ s: String) -> Int {
    let string = " "+s
    var result = 0
    for (x, y) in zip(string, string.dropFirst()) where x == " " && y != " " {
      result += 1
    }
    return result
  }
}
