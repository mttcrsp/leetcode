/// https://leetcode.com/problems/count-square-submatrices-with-all-ones/
struct CountSquareSubmatricesWithAllOnes {
  func countSquares(_ matrix: [[Int]]) -> Int {
    var matrix = matrix
    for row in matrix.indices.dropFirst() {
      for col in matrix[row].indices.dropFirst() {
        if matrix[row][col] == 1, matrix[row-1][col] > 0, matrix[row][col-1] > 0, matrix[row-1][col-1] > 0 {
          matrix[row][col] = min(matrix[row-1][col], matrix[row][col-1], matrix[row-1][col-1])+1
        }
      }
    }

    var count = 0
    for row in matrix.indices {
      for col in matrix[row].indices {
        count += matrix[row][col]
      }
    }

    return count
  }
}
