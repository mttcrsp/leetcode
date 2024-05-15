import Collections

/// https://leetcode.com/problems/making-a-large-island/
struct MakingALargeIsland {
  func largestIsland(_ grid: [[Int]]) -> Int {
    let directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    let rowsCount = grid.count
    let colsCount = grid[0].count

    var grid = grid
    var sizes: [Int: Int] = [:]
    var visited: Set<[Int]> = []
    var id = 1
    for row in grid.indices {
      for col in grid[row].indices {
        guard grid[row][col] == 1, !visited.contains([row, col]) else { continue }
        id += 1

        var frontier: Deque<[Int]> = [[row, col]]
        while let location = frontier.popFirst() {
          guard !visited.contains(location) else { continue }
          visited.insert(location)

          guard grid[location[0]][location[1]] == 1 else { continue }
          grid[location[0]][location[1]] = id
          sizes[id, default: 0] += 1

          for direction in directions {
            var nextLocation = location
            nextLocation[0] += direction[0]
            nextLocation[1] += direction[1]
            guard 
              nextLocation[0] >= 0, nextLocation[0] < rowsCount,
              nextLocation[1] >= 0, nextLocation[1] < colsCount
            else { continue }
            frontier.append(nextLocation)
          }
        }
      }
    }

    var result = 0
    for row in grid.indices {
      for col in grid[row].indices {
        guard grid[row][col] == 0 else { continue }

        var connectedIslands: Set<Int> = []
        for direction in directions {
          var nextLocation = [row, col]
          nextLocation[0] += direction[0]
          nextLocation[1] += direction[1]
          guard 
            nextLocation[0] >= 0, nextLocation[0] < rowsCount,
            nextLocation[1] >= 0, nextLocation[1] < colsCount,
            grid[nextLocation[0]][nextLocation[1]] > 0
          else { continue }
          connectedIslands.insert(grid[nextLocation[0]][nextLocation[1]])
        }

        var newIslandSize = 1
        for island in connectedIslands {
          newIslandSize += sizes[island]!
        }

        result = max(result, newIslandSize)
      }
    }

    if result == 0 {
      return rowsCount*colsCount
    } else {
      return result
    }
  }
}
