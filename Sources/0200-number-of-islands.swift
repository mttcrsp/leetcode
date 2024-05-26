/// https://leetcode.com/problems/number-of-islands/
struct NumberOfIslands {
  func numIslands(_ grid: [[Character]]) -> Int {
    let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]

    let rows = grid.count
    let cols = grid[0].count
    var grid = grid
    var islandsCount = 0
    for row in grid.indices {
      for col in grid[row].indices {
        if grid[row][col] == "1" {
          islandsCount += 1

          var queue: [[Int]] = [[row, col]]
          while let slot = queue.popLast() {
            grid[slot[0]][slot[1]] = "0"
            for direction in directions {
              var nextSlot = slot
              nextSlot[0] += direction[0]
              nextSlot[1] += direction[1]
              guard
                nextSlot[0] >= 0, nextSlot[0] < rows,
                nextSlot[1] >= 0, nextSlot[1] < cols,
                grid[nextSlot[0]][nextSlot[1]] == "1"
              else { continue }
              queue.append(nextSlot)
            }
          }
        }
      }
    }

    return islandsCount
  }
}
