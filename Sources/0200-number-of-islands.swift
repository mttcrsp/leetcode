/// https://leetcode.com/problems/number-of-islands/
struct NumberOfIslands {
  func numIslands(_ grid: [[Character]]) -> Int {
    struct Coordinate: Hashable {
      let x, y: Int
    }
    
    var islandsCount = 0
    var visited: Set<Coordinate> = []
    
    for x in grid.indices {
      for y in grid[0].indices {
        let coordinate = Coordinate(x: x, y: y)
        
        guard grid[x][y] == "1", !visited.contains(coordinate) else {
          continue
        }
        
        var stack: [Coordinate] = [coordinate]
        while let current = stack.popLast() {
          visited.insert(current)
    
          let neighbours: [Coordinate] = [
            .init(x: current.x + 1, y: current.y),
            .init(x: current.x - 1, y: current.y),
            .init(x: current.x, y: current.y + 1),
            .init(x: current.x, y: current.y - 1),
          ]
          
          for next in neighbours {
            if next.x >= 0, next.x < grid.count, next.y >= 0, next.y < grid[next.x].count {
              if grid[next.x][next.y] == "1" {
                if !visited.contains(next) {
                  stack.append(next)
                }
              }
            }
          }
        }
        
        islandsCount += 1
      }
    }
    
    return islandsCount
  }
}
