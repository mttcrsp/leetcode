/// https://leetcode.com/problems/range-sum-query-2d-immutable/
class NumMatrix {
  var dp: [[Int]]
  init(_ matrix: [[Int]]) {
    let dpRow = [Int](repeating: 0, count: matrix[0].count+1)
    var dp = [[Int]](repeating: dpRow, count: matrix.count+1)
    for row in matrix.indices {
      for col in matrix[row].indices {
        dp[row+1][col+1] =
          dp[row+1][col] +
          dp[row][col+1] -
          dp[row][col] +
          matrix[row][col]
      }
    }
    self.dp = dp
  }

  func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
    dp[row2+1][col2+1]
      - dp[row1][col2+1]
      - dp[row2+1][col1]
      + dp[row1][col1]
  }
}
