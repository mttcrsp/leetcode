/// https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/
struct NumberOfSubmatricesThatSumToTarget {
  func numSubmatrixSumTarget(_ matrix: [[Int]], _ target: Int) -> Int {
    let rows = matrix.count
    let cols = matrix[0].count
    var sums = [[Int]](repeating: [Int](repeating: 0, count: cols), count: rows)
    for row in 0 ..< rows {
      for col in 0 ..< cols {
        let isFirstRow = row == 0
        let isFirstCol = col == 0
        let prevRow = isFirstRow ? 0 : sums[row-1][col]
        let prevCol = isFirstCol ? 0 : sums[row][col-1]
        let prev = isFirstRow || isFirstCol ? 0 : sums[row-1][col-1]
        sums[row][col] = matrix[row][col]+prevRow+prevCol-prev
      }
    }

    var count = 0
    for row1 in 0 ..< rows {
      for row2 in row1 ..< rows {
        var counts = [0: 1]
        for col in 0 ..< cols {
          let sum = sums[row2][col] -
            (row1 == 0 ? 0 : sums[row1-1][col])
          let difference = sum-target
          count += counts[difference, default: 0]
          counts[sum, default: 0] += 1
        }
      }
    }

    return count
  }
}
