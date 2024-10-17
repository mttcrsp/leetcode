/// https://leetcode.com/problems/rotate-image/
struct RotateImage {
  func rotate(_ matrix: inout [[Int]]) {
    let rows = matrix.count
    let cols = matrix[0].count

    for row in 0 ..< rows/2 {
      matrix.swapAt(row, rows-1-row)
    }

    for row in 0 ..< rows {
      for col in row+1 ..< cols {
        let a = matrix[row][col]
        let b = matrix[col][row]
        matrix[row][col] = b
        matrix[col][row] = a
      }
    }
  }
}
