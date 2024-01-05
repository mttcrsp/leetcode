/// https://leetcode.com/problems/equal-row-and-column-pairs/
struct EqualRowAndColumnPairs {
  func equalPairs(_ grid: [[Int]]) -> Int {
    var rowCount: [[Int]: Int] = [:]
    for row in grid {
      rowCount[row, default: 0] += 1
    }

    var pairs = 0
    for x in grid[0].indices {
      var column: [Int] = []
      for y in grid.indices {
        column.append(grid[y][x])
      }
      pairs += rowCount[column, default: 0]
    }
    return pairs
  }
}
