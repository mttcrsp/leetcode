/// https://leetcode.com/problems/rotting-oranges/
struct RottingOranges {
  func orangesRotting(_ grid: [[Int]]) -> Int {
    var fresh: Set<[Int]> = []
    var frontier: [[Int]] = []
    for x in grid.indices {
      for y in grid[x].indices {
        let state = grid[x][y]
        if state == 1 {
          fresh.insert([x, y])
        } else if state == 2 {
          frontier.append([x, y])
        }
      }
    }

    var iteration = 0
    while !frontier.isEmpty {
      var newFrontier: [[Int]] = []
      for orange in frontier {
        let x = orange[0], y = orange[1]
        newFrontier.appendIfNotNil(fresh.remove([x - 1, y]))
        newFrontier.appendIfNotNil(fresh.remove([x + 1, y]))
        newFrontier.appendIfNotNil(fresh.remove([x, y + 1]))
        newFrontier.appendIfNotNil(fresh.remove([x, y - 1]))
      }
      frontier = newFrontier

      if !newFrontier.isEmpty {
        iteration += 1
      }
    }

    return fresh.isEmpty ? iteration : -1
  }
}

private extension Array {
  mutating func appendIfNotNil(_ element: Element?) {
    if let element = element {
      append(element)
    }
  }
}
