/// https://leetcode.com/problems/construct-the-rectangle/
struct ConstructTheRectangle {
  func constructRectangle(_ area: Int) -> [Int] {
    let squareRoot = Int(Double(area).squareRoot())

    for factor in (1 ... squareRoot).reversed() {
      if area%factor == 0 {
        return [area/factor, factor]
      }
    }

    preconditionFailure("no solution found")
  }
}
