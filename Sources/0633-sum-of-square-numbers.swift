/// https://leetcode.com/problems/sum-of-square-numbers/
struct SumOfSquareNumbers {
  func judgeSquareSum(_ c: Int) -> Bool {
    var a = 0
    while a*a <= c {
      defer { a += 1 }

      let b = Double(c-(a*a)).squareRoot()
      if b.truncatingRemainder(dividingBy: 1) == 0 {
        return true
      }
    }

    return false
  }
}
