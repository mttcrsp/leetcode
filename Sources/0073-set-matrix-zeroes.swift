/// https://leetcode.com/problems/set-matrix-zeroes/
struct SetMatrixZeroes {
  func setZeroes(_ matrix: inout [[Int]]) {
    var firstRow = false
    var firstCol = false
    for row in matrix.indices {
      for col in matrix[row].indices {
        if matrix[row][col] == 0 {
          firstRow = firstRow || row == 0
          firstCol = firstCol || col == 0
          matrix[row][0] = 0
          matrix[0][col] = 0
        }
      }
    }

    for row in matrix.indices.reversed() {
      for col in matrix[row].indices.reversed() {
        if matrix[row][0] == 0 || matrix[0][col] == 0 || (row == 0 && firstRow) || (col == 0 && firstCol) {
          matrix[row][col] = 0
        }
      }
    }
  }
}
