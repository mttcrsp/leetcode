/// https://leetcode.com/problems/transpose-matrix/
struct TransposeMatrix {
  func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var result = [[Int]](
      repeating: [Int](repeating: 0, count: matrix.count),
      count: matrix[0].count
    )
    for y in matrix.indices {
      for x in matrix[0].indices {
        result[x][y] = matrix[y][x]
      }
    }
    return result
  }
}
