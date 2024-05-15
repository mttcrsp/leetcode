/// https://leetcode.com/problems/toeplitz-matrix/
struct ToeplitzMatrix {
  func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    for row in matrix.indices.dropFirst() {
      for col in matrix[row].indices.dropFirst() {
        if matrix[row][col] != matrix[row-1][col-1] {
          return false
        }
      }
    }

    return true
  }
}
