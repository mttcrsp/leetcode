/// https://leetcode.com/problems/rotting-oranges/
struct RottingOranges {
  func orangesRotting(_ grid: [[Int]]) -> Int {
    let directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    var grid = grid
    let rows = grid.count
    let cols = grid[0].count

    var freshCount = 0
    var frontier: Set<[Int]> = []
    for row in grid.indices {
      for col in grid[row].indices {
        let slot = [row, col]
        switch grid[row][col] {
        case 2: frontier.insert(slot)
        case 1: freshCount += 1
        case _: continue
        }
      }
    }

    var minute = 0
    while freshCount > 0, !frontier.isEmpty {
      var newFrontier: Set<[Int]> = []
      for slot in frontier {
        for direction in directions {
          var nextSlot = slot
          nextSlot[0] += direction[0]
          nextSlot[1] += direction[1]
          guard
            nextSlot[0] >= 0, nextSlot[0] < rows,
            nextSlot[1] >= 0, nextSlot[1] < cols,
            grid[nextSlot[0]][nextSlot[1]] == 1
          else { continue }
          grid[nextSlot[0]][nextSlot[1]] = 2
          freshCount -= 1
          newFrontier.insert(nextSlot)
        }
      }
      frontier = newFrontier
      minute += 1
    }

    return freshCount == 0 ? minute : -1
  }
}
