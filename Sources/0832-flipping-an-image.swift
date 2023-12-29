/// https://leetcode.com/problems/flipping-an-image/
struct FlippingAnImage {
  func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var matrix = A

    for i in matrix.indices {
      for j in 0 ..< matrix[i].count/2 {
        let oppositeOfJ = opposite(of: j, in: matrix[i].count)
        let invert1 = invert(matrix[i][j])
        let invert2 = invert(matrix[i][oppositeOfJ])
        matrix[i][j] = invert2
        matrix[i][oppositeOfJ] = invert1
      }
    }

    for i in matrix.indices where matrix[i].count%2 != 0 {
      let j = centerColumn(in: matrix[i].count)
      matrix[i][j] = invert(matrix[i][j])
    }

    return matrix
  }

  private func invert(_ value: Int) -> Int {
    switch value {
    case 0: 1
    case 1: 0
    default: preconditionFailure("Unexpected value '\(value)'")
    }
  }

  private func opposite(of column: Int, in colums: Int) -> Int {
    colums-1-column
  }

  private func centerColumn(in colums: Int) -> Int {
    colums/2
  }
}
