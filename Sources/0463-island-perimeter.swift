/// https://leetcode.com/problems/island-perimeter/
struct IslandPerimeter {
  func islandPerimeter(_ grid: [[Int]]) -> Int {
    var result = 0

    for x in 0 ..< grid.count {
      for y in 0 ..< grid[x].count {
        guard grid[x][y] == 1 else { continue }
        if x - 1 < 0 || grid[x - 1][y] == 0 { result += 1 }
        if x + 1 >= grid.count || grid[x + 1][y] == 0 { result += 1 }
        if y - 1 < 0 || grid[x][y - 1] == 0 { result += 1 }
        if y + 1 >= grid[x].count || grid[x][y + 1] == 0 { result += 1 }
      }
    }

    return result
  }
}
