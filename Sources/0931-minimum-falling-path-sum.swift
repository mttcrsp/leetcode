/// https://leetcode.com/problems/minimum-falling-path-sum/
struct MinimumFallingPathSum {
  func minFallingPathSum(_ matrix: [[Int]]) -> Int {
    var matrix = matrix
    for y in matrix.indices.dropFirst() {
      for x in matrix[y].indices {
        var previousMin = matrix[y-1][x]
        if x > 0 {
          previousMin = min(previousMin, matrix[y-1][x-1])
        }
        if x < matrix[y].count-1 {
          previousMin = min(previousMin, matrix[y-1][x+1])
        }
        matrix[y][x] += previousMin
      }
    }

    return matrix.last?.min() ?? 0
  }
}
