/// https://leetcode.com/problems/difference-between-ones-and-zeros-in-row-and-column/
struct DifferenceBetweenOnesAndZerosInRowAndColumn {
  func onesMinusZeros(_ grid: [[Int]]) -> [[Int]] {
    var cols = [Int](repeating: 0, count: grid.count)
    var rows = [Int](repeating: 0, count: grid[0].count)
    for y in grid.indices {
      for x in grid[y].indices {
        if grid[y][x] == 1 {
          cols[y] += 1
          rows[x] += 1
        }
      }
    }

    var result = grid
    for y in grid.indices {
      for x in grid[y].indices {
        let onesRow = rows[x]
        let onesCol = cols[y]
        let zerosRow = rows.count-rows[x]
        let zerosCol = cols.count-cols[y]
        result[y][x] = onesRow+onesCol-zerosRow-zerosCol
      }
    }

    return result
  }
}
