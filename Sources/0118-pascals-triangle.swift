/// https://leetcode.com/problems/pascals-triangle/
struct PascalsTriangle {
  func generate(_ numRows: Int) -> [[Int]] {
    guard numRows >= 0 else {
      return [[1]]
    }

    if numRows == 0 {
      return []
    }

    var pyramid = (1 ... numRows).map { count in
      [Int](repeating: 1, count: count)
    }

    guard numRows > 1 else {
      return pyramid
    }

    for row in 1 ..< numRows-1 {
      for (column, (lhs, rhs)) in zip(pyramid[row], pyramid[row].dropFirst()).enumerated() {
        pyramid[row+1][column+1] = lhs+rhs
      }
    }

    return pyramid
  }
}
