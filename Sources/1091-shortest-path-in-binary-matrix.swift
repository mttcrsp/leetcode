import Collections

/// https://leetcode.com/problems/shortest-path-in-binary-matrix/
struct ShortestPathInBinaryMatrix {
  func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
    var grid = grid
    let rows = grid.count
    let cols = grid[0].count

    guard grid[0][0] != 1, grid[rows-1][cols-1] != -1
    else { return -1 }

    let increments = [
      [1, 0], [0, 1], [-1, 0], [0, -1],
      [1, 1], [-1, -1], [-1, 1], [1, -1],
    ]

    var queue: Deque<([Int], Int)> = [([0, 0], 1)]
    grid[0][0] = 1

    while let (position, distance) = queue.popFirst() {
      if position[0] == rows-1, position[1] == cols-1 {
        return distance
      }

      for increment in increments {
        var nextPosition = position
        nextPosition[0] += increment[0]
        nextPosition[1] += increment[1]
        guard
          nextPosition[0] >= 0, nextPosition[0] < rows,
          nextPosition[1] >= 0, nextPosition[1] < cols,
          grid[nextPosition[0]][nextPosition[1]] == 0
        else { continue }
        grid[nextPosition[0]][nextPosition[1]] = 1
        queue.append((nextPosition, distance+1))
      }
    }

    return -1
  }
}
