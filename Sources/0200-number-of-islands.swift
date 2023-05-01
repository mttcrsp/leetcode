/// https://leetcode.com/problems/number-of-islands/
struct NumberOfIslands {
  func numIslands(_ grid: [[Character]]) -> Int {
    struct Coordinate: Hashable {
      let x, y: Int
    }
    
    var result = 0
    var grid = grid
    
    func eraseIsland(at x: Int, _ y: Int) {
      if x >= 0, x < grid.count, y >= 0, y < grid[x].count, grid[x][y] == "1" {
        grid[x][y] = "0"
        eraseIsland(at: x + 1, y)
        eraseIsland(at: x - 1, y)
        eraseIsland(at: x, y + 1)
        eraseIsland(at: x, y - 1)
      }
    }
    
    for x in grid.indices {
      for y in grid[0].indices {
        if grid[x][y] == "1" {
          result += 1
          eraseIsland(at: x, y)
        }
      }
    }
    
    return result
  }
}
